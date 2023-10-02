import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:jobspot/core/failure.dart';
import 'package:jobspot/feature/home/feature/notification/data/models/notification_model.dart';

abstract class NotificationDataSource {
  Future<Either<Failure, List<NotificationModel>>> getListNotification(
      String userId);
  Future<Either<Failure, Unit>> updateReadNotification(
      NotificationModel notification);
  Future<Either<Failure, Unit>> updateReadAllNotification(String userId);
  Future<Either<Failure, int>> getCountNotificationUnRead(String userId);
  void resetLastDocument() {}
}

DocumentSnapshot? _lastDocument;

class NotificationDataSourceImpl implements NotificationDataSource {
  final _db = FirebaseFirestore.instance;
  final int _perPage = 20; // Number of documents to fetch per page

  @override
  Future<Either<Failure, List<NotificationModel>>> getListNotification(
      String userId) async {
    try {
      var query = _db
          .collection("NotificationUser")
          .doc(userId)
          .collection("Noti")
          .orderBy("sendDateTime", descending: true)
          .limit(_perPage);

      if (_lastDocument != null) {
        query = query.startAfterDocument(_lastDocument!);
      }

      final querySnapshot = await query.get();

      if (querySnapshot.docs.isNotEmpty) {
        _lastDocument = querySnapshot.docs.last;
      }

      final List<NotificationModel> companies = querySnapshot.docs.map((doc) {
        final data = doc.data();
        return NotificationModel.fromJson(data);
      }).toList();

      return right(companies);
    } catch (e) {
      return left(ParsingFailure(
          'Get list notification Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateReadAllNotification(String userId) async {
    try {
      var query = await _db
          .collection("NotificationUser")
          .doc(userId)
          .collection("Noti")
          .where('status', isEqualTo: true)
          .get();

      if (query.size > 0) {
        for (final doc in query.docs) {
          final notiDocRef = doc.reference;
          await notiDocRef.update({
            'status': false,
          });
        }
      }

      return right(unit);
    } catch (e) {
      return left(ParsingFailure(
          'Update all notification Firebase Error: ${e.toString()}'));
    }
  }

  @override
  Future<Either<Failure, Unit>> updateReadNotification(
      NotificationModel notification) async {
    try {
      _db
          .collection("NotificationUser")
          .doc(notification.userId)
          .collection("Noti")
          .doc(notification.id)
          .update(notification.toJson());

      return right(unit);
    } catch (e) {
      return left(ParsingFailure(
          'Update notification Firebase Error: ${e.toString()}'));
    }
  }

  @override
  void resetLastDocument() {
    _lastDocument = null;
  }

  @override
  Future<Either<Failure, int>> getCountNotificationUnRead(String userId) async {
    try {
      var query = await _db
          .collection("NotificationUser")
          .doc(userId)
          .collection("Noti")
          .where('status', isEqualTo: true)
          .get();

      return right(query.size);
    } catch (e) {
      return left(ParsingFailure(
          'Get count unread notification Firebase Error: ${e.toString()}'));
    }
  }
}
