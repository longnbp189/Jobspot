import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/auth/feature/profile/data/models/cv_info_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/district_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/job_category_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/jobs_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/province_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/ward_model.dart';
import 'package:jobspot/services/database_helper.dart';

abstract class JobRemoteDataSource {
  Future<Either<Failure, Unit>> getAddress();
  Future<Either<Failure, List<JobsModel>>> getListJob();
  Future<Either<Failure, Unit>> submitCV(CVInfoModel cvInfoModel);
  Future<Either<Failure, List<JobsModel>>> getListJobMax();
  Future<Either<Failure, Unit>> updateBookMark({
    required UserModel userModel,
  });
  void resetLastDocument() {}
}

DocumentSnapshot? _lastDocument;

class JobRemoteDataSourceImpl implements JobRemoteDataSource {
  final int _perPage = 8; // Number of documents to fetch per page
  final dio = Dio();
  var db = DatabaseHelper.instance;
  final _db = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, Unit>> getAddress() async {
    try {
      //province
      final responseProvince = await dio
          .get('https://vn-public-apis.fpo.vn/provinces/getAll?limit=-1');
      List<ProvinceModel> provinceModel = [];
      var provinces = responseProvince.data['data']['data'];
      for (var element in provinces) {
        provinceModel.add(ProvinceModel.fromJson(element));
      }
      db.addProvince(provinceModel);
      // Box<ProvinceModel> boxProvinces = await Hive.openBox('provinces');
      // boxProvinces.addAll(provinceModel);
      // print('${boxProvinces.values.first}');
      // print('add boxProvinces success');

//district
      final responseDistrict = await dio
          .get('https://vn-public-apis.fpo.vn/districts/getAll?limit=-1');
      List<DistrictModel> districModel = [];
      var districts = responseDistrict.data['data']['data'];
      for (var element in districts) {
        districModel.add(DistrictModel.fromJson(element));
      }
      db.addDistrict(districModel);

      final querySnapshot = await _db.collection("JobCatogory").get();

      final List<JobCategoryModel> jobcategories =
          querySnapshot.docs.map((doc) {
        final data = doc.data();
        return JobCategoryModel.fromJson(data);
      }).toList();
      var other =
          jobcategories.firstWhere((element) => element.name == 'Other');

      jobcategories.removeWhere((element) => element.id == other.id);
      jobcategories.sort(
        (a, b) => a.name.compareTo(b.name),
      );
      jobcategories.add(other);
      db.addJobCategory(jobcategories);

      // var boxDistrict = await Hive.openBox('districts');

      // boxDistrict.addAll(districModel);
      // print('add boxDistrict success');

      // //ward
      // final responseWard =
      //     await dio.get('https://vn-public-apis.fpo.vn/wards/getAll?limit=-1');
      // List<WardModel> wardModel = [];
      // var wards = responseWard.data['data']['data'];
      // for (var element in wards) {
      //   wardModel.add(WardModel.fromJson(element));
      // }
      // var boxWard = await Hive.openBox('wards');
      // boxWard.addAll(wardModel);
      // print('add address success');

      return right(unit);
    } catch (e) {
      return left(ParsingFailure('get data address Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<JobsModel>>> getListJob() async {
    try {
      var query = _db.collection("Jobs").limit(_perPage);

      if (_lastDocument != null) {
        query = query.startAfterDocument(_lastDocument!);
      }

      final querySnapshot = await query.get();

      if (querySnapshot.docs.isNotEmpty) {
        _lastDocument = querySnapshot.docs.last;
      }

      final List<JobsModel> jobs = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return JobsModel.fromJson(data);
      }).toList();

      jobs.removeWhere((element) =>
          element.status == false ||
          element.startDate!.isAfter(element.endDate!));
      jobs.sort(
        (a, b) => b.startDate!.compareTo(a.startDate!),
      );

      return right(jobs);
    } catch (e) {
      return left(
          ParsingFailure('Get list job Firebase Error: ${e.toString()}'));
    }
  }

  @override
  void resetLastDocument() {
    _lastDocument = null;
  }

  @override
  Future<Either<Failure, List<JobsModel>>> getListJobMax() async {
    try {
      var query = await _db.collection("Jobs").get();

      final List<JobsModel> jobs = query.docs.map((doc) {
        final data = doc.data();
        return JobsModel.fromJson(data);
      }).toList();

      return right(jobs);
    } catch (e) {
      return left(
          ParsingFailure('Get list job max Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateBookMark(
      {required UserModel userModel}) async {
    try {
      _db.collection("Users").doc(userModel.id).update(userModel.toJson());
      return right(unit);
    } catch (e) {
      return left(ParsingFailure(
          'Update bookmark user Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> submitCV(CVInfoModel cvInfoModel) async {
    try {
      final collectionReference = FirebaseFirestore.instance
          .collection('Jobs')
          .doc(cvInfoModel.jobId)
          .collection("SubmitCV");
      await collectionReference.doc(cvInfoModel.id).set(cvInfoModel.toJson());
      return right(unit);
    } catch (e) {
      return left(ParsingFailure('Submit CV Firebase Error: ${e.toString()}'));
    }
  }
}
