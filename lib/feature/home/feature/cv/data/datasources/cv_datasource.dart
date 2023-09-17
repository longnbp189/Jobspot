import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/home/feature/cv/data/models/cv_model.dart';
import 'package:path_provider/path_provider.dart';

abstract class CvDataSource {
  Future<Either<Failure, List<CVModel>>> getListCV(String id);
  Future<Either<Failure, Unit>> updateMainCV(CVModel cv);
  Future<Either<Failure, Unit>> updateNameCV(CVModel cv);
  Future<Either<Failure, Unit>> uploadCV(CVModel cv);
  Future<Either<Failure, Unit>> downloadCV(CVModel cv);
}

class CvDataSourceImpl implements CvDataSource {
  final _db = FirebaseFirestore.instance;
  @override
  Future<Either<Failure, List<CVModel>>> getListCV(String id) async {
    try {
      final querySnapshot = await _db
          .collection('UserPdf')
          .doc(id)
          .collection('Pdf')
          .where('isDelete', isEqualTo: false)
          .get();

      final List<CVModel> cvs = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return CVModel.fromJson(data);
      }).toList();
      if (cvs.isNotEmpty) {
        cvs.sort(
          (a, b) => b.uploadDate!.compareTo(a.uploadDate!),
        );
      }

      return right(cvs);
    } catch (e) {
      return left(
          ParsingFailure('Get list cv Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateMainCV(CVModel cv) async {
    try {
      var query = await FirebaseFirestore.instance
          .collection('UserPdf')
          .doc(cv.userId)
          .collection('Pdf')
          .where('isMainCV', isEqualTo: true)
          .get();
      if (query.size > 0) {
        for (final doc in query.docs) {
          final pdfDocRef = doc.reference;
          await pdfDocRef.update({
            'isMainCV': false,
          });
        }
      }

      await _db
          .collection('UserPdf')
          .doc(cv.userId)
          .collection('Pdf')
          .doc(cv.id)
          .update({'isMainCV': true});

      return right(unit);
    } catch (e) {
      return left(
          ParsingFailure('Update main cv Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateNameCV(CVModel cv) async {
    try {
      await _db
          .collection('UserPdf')
          .doc(cv.userId)
          .collection('Pdf')
          .doc(cv.id)
          .update({'name': cv.name});

      return right(unit);
    } catch (e) {
      return left(
          ParsingFailure('Update name cv Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> uploadCV(CVModel cv) async {
    try {
      DocumentReference docRef = FirebaseFirestore.instance
          .collection('UserPdf')
          .doc(cv.userId)
          .collection('Pdf')
          .doc(cv.id);
      await docRef.set(cv.toJson());

      return right(unit);
    } catch (e) {
      return left(ParsingFailure('Upload cv Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> downloadCV(CVModel cv) async {
    try {
      final baseStorage = await getExternalStorageDirectory();
      await FlutterDownloader.enqueue(
        url: cv.url,
        // headers: {}, // optional: header send with url (auth token etc)
        savedDir: baseStorage!.path,
        showNotification:
            true, // show download progress in status bar (for Android)
        openFileFromNotification:
            true, // click on notification to open downloaded file (for Android)
      );
      return right(unit);
    } catch (e) {
      return left(ParsingFailure('Dowload cv Error: ${e.toString()}'));
    }
  }
}
