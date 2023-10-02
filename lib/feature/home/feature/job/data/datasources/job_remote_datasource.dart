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
  Future<Either<Failure, List<JobsModel>>> getListBestJob();
  Future<Either<Failure, Unit>> submitCV(CVInfoModel cvInfoModel);
  Future<Either<Failure, List<JobsModel>>> getListJobMax();
  Future<Either<Failure, Unit>> updateBookMark({
    required UserModel userModel,
  });
  Future<Either<Failure, Map<String, CVInfoModel>>> getListApplyJob({
    required UserModel userModel,
  });
  void resetLastDocument() {}
}

DocumentSnapshot? _lastDocument;

class JobRemoteDataSourceImpl implements JobRemoteDataSource {
  final int _perPage = 20; // Number of documents to fetch per page
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

  @override
  Future<Either<Failure, Map<String, CVInfoModel>>> getListApplyJob(
      {required UserModel userModel}) async {
    try {
      List<CVInfoModel> documentJobs = [];
      // final jobCollection =
      //     await FirebaseFirestore.instance.collection('Jobs').get();
      // for (var doc in jobCollection.docs) {
      //   documentJobIds.add(doc.id);
      // }

      for (var element in userModel.jobIds) {
        CollectionReference submitCvCollection = FirebaseFirestore.instance
            .collection('Jobs')
            .doc(element)
            .collection('SubmitCV');

        QuerySnapshot submitCvQuerySnapshot = await submitCvCollection.get();

        for (var doc in submitCvQuerySnapshot.docs) {
          final data = doc.data() as Map<String, dynamic>;
          documentJobs.add(CVInfoModel.fromJson(data));
        }
      }
      documentJobs.removeWhere((element) => element.userId != userModel.id);

      void sortListsByCreationTime(
          Map<String, List<CVInfoModel>> dividedLists) {
        dividedLists.forEach((id, list) {
          list.sort((a, b) => b.sendDate!.compareTo(a.sendDate!));
        });
      }

      Map<String, CVInfoModel> firstItemMap = {};

      Map<String, List<CVInfoModel>> dividedLists = {};
      Map<String, List<CVInfoModel>> divideListById(
          List<CVInfoModel> inputList) {
        for (var object in inputList) {
          if (!dividedLists.containsKey(object.jobId)) {
            dividedLists[object.jobId] = [];
          }
          dividedLists[object.jobId]!.add(object);
        }

        return dividedLists;
      }

      dividedLists = divideListById(documentJobs);

      dividedLists.forEach((id, cvInfoList) {
        if (cvInfoList.isNotEmpty) {
          // Sort the list by sendDate and take the first item
          cvInfoList.sort((a, b) => b.sendDate!.compareTo(a.sendDate!));
          CVInfoModel firstItem = cvInfoList.first;
          // Store the first item in the new map
          firstItemMap[id] = firstItem;
        }
      });

      // Chia danh sách thành các danh sách riêng lẻ dựa trên ID

      // Sắp xếp mỗi danh sách theo thời gian tạo
      // sortListsByCreationTime(dividedLists);
      // dividedLists.forEach((key, value) {});

      return right(firstItemMap);
    } catch (e) {
      return left(ParsingFailure('Submit CV Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<JobsModel>>> getListBestJob() async {
    try {
      final querySnapshot = await _db.collection("Jobs").get();

      final List<JobsModel> jobs = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return JobsModel.fromJson(data);
      }).toList();

      jobs.removeWhere((element) =>
          !element.status || !DateTime.now().isBefore(element.endDate!));

      // jobs.shuffle();
      // List<JobsModel> shuffledJobs = jobs.take(4).toList();

      return right(jobs);
    } catch (e) {
      return left(
          ParsingFailure('Get list jobs Firebase Error: ${e.toString()}'));
    }
  }
}
