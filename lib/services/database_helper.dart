import 'dart:io';
import 'package:jobspot/feature/home/feature/job/data/models/district_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/job_category_model.dart';
import 'package:jobspot/feature/home/feature/job/data/models/province_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;
  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'address.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE provinces(
        _id TEXT PRIMARY KEY,
        name TEXT,
        slug TEXT,
        type TEXT,
        name_with_type TEXT,
        code TEXT,
        isDeleted INTEGER 
      )
      ''');

    await db.execute('''
      CREATE TABLE districts(
        _id TEXT PRIMARY KEY,
        name TEXT,
        slug TEXT,
        type TEXT,
        name_with_type TEXT,
        code TEXT,
        path TEXT,
        path_with_type TEXT,
        parent_code TEXT,
        isDeleted INTEGER  
      )
    ''');

    await db.execute('''
      CREATE TABLE jobCategories(
        id TEXT PRIMARY KEY,
        name TEXT
      )
    ''');
  }

  Future<List<ProvinceModel>> getProvinces() async {
    Database db = await instance.database;
    var provinces = await db.query('provinces', orderBy: 'slug');
    List<ProvinceModel> provinceList = provinces.isNotEmpty
        ? provinces
            .map((c) => ProvinceModel(
                  id: c['_id'] as String? ?? '',
                  name: c['name'] as String? ?? '',
                  slug: c['slug'] as String? ?? '',
                  type: c['type'] as String? ?? '',
                  nameWithType: c['name_with_type'] as String? ?? '',
                  code: c['code'] as String? ?? '',
                  isDeleted: c['isDeleted'] == 1 ? true : false,
                ))
            .toList()
        : [];
    return provinceList;
  }

  Future<List<DistrictModel>> getDistrict(String idProvinces) async {
    Database db = await instance.database;
    var districts = await db.query('districts',
        where: 'parent_code = ?', whereArgs: [idProvinces], orderBy: 'slug');
    List<DistrictModel> districtList = districts.isNotEmpty
        ? districts
            .map((c) => DistrictModel(
                  id: c['_id'] as String? ?? '',
                  name: c['name'] as String? ?? '',
                  slug: c['slug'] as String? ?? '',
                  type: c['type'] as String? ?? '',
                  nameWithType: c['name_with_type'] as String? ?? '',
                  code: c['code'] as String? ?? '',
                  path: c['path'] as String? ?? '',
                  pathWithType: c['path_with_type'] as String? ?? '',
                  parentCode: c['parent_code'] as String? ?? '',
                  isDeleted: c['isDeleted'] == 1 ? true : false,
                ))
            .toList()
        : [];
    return districtList;
  }

  Future<List<JobCategoryModel>> getJobCategories() async {
    Database db = await instance.database;
    var jobCategories = await db.query('jobCategories');
    List<JobCategoryModel> jobCategoryList = jobCategories.isNotEmpty
        ? jobCategories.map((c) => JobCategoryModel.fromJson(c)).toList()
        : [];
    return jobCategoryList;
  }

  Future<void> addProvince(List<ProvinceModel> provinces) async {
    Database db = await instance.database;

    for (var province in provinces) {
      var value = {
        '_id': province.id,
        'name': province.name,
        'slug': province.slug,
        'type': province.type,
        'name_with_type': province.nameWithType,
        'code': province.code,
        'isDeleted': province.isDeleted == false ? 0 : 1,
      };
      await db.insert('provinces', value);
    }
  }

  Future<void> addDistrict(List<DistrictModel> districts) async {
    Database db = await instance.database;

    for (var district in districts) {
      var value = {
        '_id': district.id,
        'name': district.name,
        'slug': district.slug,
        'type': district.type,
        'name_with_type': district.nameWithType,
        'code': district.code,
        'path': district.path,
        'path_with_type': district.pathWithType,
        'parent_code': district.parentCode,
        'isDeleted': district.isDeleted == false ? 0 : 1,
      };
      await db.insert('districts', value);
    }
  }

  Future<void> addJobCategory(List<JobCategoryModel> jobCategory) async {
    Database db = await instance.database;

    for (var category in jobCategory) {
      var value = {
        'id': category.id,
        'name': category.name,
      };
      await db.insert('jobCategories', value);
    }
    print('done.....');
  }
}
