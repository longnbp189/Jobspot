import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jobspot/feature/home/feature/chat/data/model/message_model.dart';

class ChatService extends ChangeNotifier {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> sendMessage(
      String receiverId, String message, String user) async {
    final DateTime sendTime = DateTime.now();

    MessageModel newMessage = MessageModel(
        message: message,
        receiverId: receiverId,
        senderId: user,
        senderEmail: '',
        sendTime: sendTime);

    List<String> ids = [user, receiverId];
    ids.sort();
    String chatRoomId = ids.join("-");

    //add message
    await firebaseFirestore
        .collection('Chat_rooms')
        .doc(chatRoomId)
        .collection('messages')
        .add(newMessage.toJson());
  }

  // Stream<List<MessageModel>> getMessages(
  //     String userId, String otherUserId) async* {
  //   List<String> ids = [userId, otherUserId];
  //   ids.sort();
  //   String chatRoomId = ids.join("-");
  //   final querySnapshot = await firebaseFirestore
  //       .collection('Chat_rooms')
  //       .doc(chatRoomId)
  //       .collection('messages')
  //       .orderBy('sendTime', descending: false)
  //       .get();
  //   final List<MessageModel> list = querySnapshot.docs.map((doc) {
  //     final data = doc.data();
  //     return MessageModel.fromJson(data);
  //   }).toList();
  //   yield list;
  // }

  Stream<QuerySnapshot> getMessages(String userId, String otherUserId) {
    List<String> ids = [userId, otherUserId];
    ids.sort();
    String chatRoomId = ids.join("-");
    return firebaseFirestore
        .collection('Chat_rooms')
        .doc(chatRoomId)
        .collection('messages')
        .orderBy('sendTime', descending: false)
        .snapshots();
  }
}
