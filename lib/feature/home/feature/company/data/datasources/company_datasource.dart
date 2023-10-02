import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:jobspot/feature/home/feature/company/data/models/company_model.dart';

abstract class CompanyDataSource {
  Future<Either<Failure, List<CompanyModel>>> getListCompany();
  Future<Either<Failure, List<CompanyModel>>> getListCompanyMax();
  Future<Either<Failure, List<CompanyModel>>> getListTopCompany();
  Future<Either<Failure, List<CompanyModel>>> getListCompanySameType(
      String type);
  Future<Either<Failure, CompanyModel>> getCompanyById({required String id});
  Future<Either<Failure, Unit>> followCompany({
    required CompanyModel companyModel,
    required UserModel userModel,
  });
  void resetLastDocument() {}
}

DocumentSnapshot? _lastDocument;

class CompanyDataSourceImp implements CompanyDataSource {
  final _db = FirebaseFirestore.instance;
  final int _perPage = 20; // Number of documents to fetch per page
  // Store the last document for pagination

  @override
  Future<Either<Failure, Unit>> followCompany({
    required CompanyModel companyModel,
    required UserModel userModel,
  }) async {
    try {
      _db
          .collection("Companies")
          .doc(companyModel.id)
          .update(companyModel.toJson());

      _db.collection("Users").doc(userModel.id).update(userModel.toJson());
      return right(unit);
    } catch (e) {
      return left(
          ParsingFailure('Update company Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, CompanyModel>> getCompanyById(
      {required String id}) async {
    try {
      final documentSnapshot = await _db.collection("Companies").doc(id).get();
      final companyData = documentSnapshot.data() as Map<String, dynamic>;
      final companyModel = CompanyModel.fromJson(companyData);

      return right(companyModel);
    } catch (e) {
      return left(
          ParsingFailure('get company Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListCompany() async {
    try {
      var query = _db.collection("Companies").limit(_perPage);

      if (_lastDocument != null) {
        query = query.startAfterDocument(_lastDocument!);
      }

      final querySnapshot = await query.get();

      if (querySnapshot.docs.isNotEmpty) {
        _lastDocument = querySnapshot.docs.last;
      }

      final List<CompanyModel> companies = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return CompanyModel.fromJson(data);
      }).toList();

      return right(companies);
    } catch (e) {
      return left(
          ParsingFailure('Get list company Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListTopCompany() async {
    try {
      final querySnapshot = await _db.collection("Companies").get();

      final List<CompanyModel> companies = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return CompanyModel.fromJson(data);
      }).toList();

      companies.shuffle();
      List<CompanyModel> shuffledCompanies = companies.take(4).toList();

      return right(shuffledCompanies);
    } catch (e) {
      return left(
          ParsingFailure('Get list company Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListCompanySameType(
      String type) async {
    try {
      var query = FirebaseFirestore.instance
          .collection('Companies')
          .where('type', isEqualTo: type)
          .limit(_perPage);

      if (_lastDocument != null) {
        query = query.startAfterDocument(_lastDocument!);
      }

      final querySnapshot = await query.get();

      if (querySnapshot.docs.isNotEmpty) {
        _lastDocument = querySnapshot.docs.last;
      }

      List<CompanyModel> companies = querySnapshot.docs.map((doc) {
        final data = doc.data();

        return CompanyModel.fromJson(data);
      }).toList();

      return right(companies);
    } catch (e) {
      return left(ParsingFailure(
          'Get list same company Firebase Error: ${e.toString()}'));
    }
  }

  @override
  void resetLastDocument() {
    _lastDocument = null;
  }

  @override
  Future<Either<Failure, List<CompanyModel>>> getListCompanyMax() async {
    try {
      var query = await _db.collection("Companies").get();

      final List<CompanyModel> companies = query.docs.map((doc) {
        final data = doc.data();
        return CompanyModel.fromJson(data);
      }).toList();

      return right(companies);
    } catch (e) {
      return left(
          ParsingFailure('Get list company Firebase Error: ${e.toString()}'));
    }
  }
}
