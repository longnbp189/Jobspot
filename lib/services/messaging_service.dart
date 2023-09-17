import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class MessagingService {
  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'Job_importance_channel', // id
    'Job Importance Notifications', // title
    importance: Importance.max,
  );

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

// flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//   ?.createNotificationChannel(channel);

  static String? fcmToken; // Variable to store the FCM token

  static final MessagingService _instance = MessagingService._internal();

  factory MessagingService() => _instance;

  MessagingService._internal();

  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> init(BuildContext context) async {
    // Requesting permission for notifications
    NotificationSettings settings = await _fcm.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      // onDidReceiveBackgroundNotificationResponse: onSelectNotification,
      // onDidReceiveNotificationResponse: onSelectNotification,
    );

    // onSelectNotification(NotificationResponse notificationResponse) async {
    //   print("payload ");
    // }

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    debugPrint(
        'User granted notifications permission: ${settings.authorizationStatus}');

    // Retrieving the FCM token
    fcmToken = await _fcm.getToken();
    log('fcmToken: $fcmToken');

    // Handling background messages using the specified handler
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // Listening for incoming messages while the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint('Got a message whilst in the foreground!');
      debugPrint('Message data: ${message.notification!.title.toString()}');
      final notification = message.notification;

      if (notification != null) {
        print('Message also contained a notification: ${message.notification}');

        createAndShowNotification(notification);
      }

      // if (message.notification != null) {
      //   if (message.notification!.title != null &&
      //       message.notification!.body != null) {
      //     final notificationData = message.data;
      //     final screen = notificationData['screen'];

      //     // Showing an alert dialog when a notification is received (Foreground state)
      //     showDialog(
      //       context: context,
      //       barrierDismissible: false,
      //       builder: (BuildContext context) {
      //         return WillPopScope(
      //           onWillPop: () async => false,
      //           child: AlertDialog(
      //             title: Text(message.notification!.title!),
      //             content: Text(message.notification!.body!),
      //             actions: [
      //               if (notificationData.containsKey('screen'))
      //                 TextButton(
      //                   onPressed: () {
      //                     Navigator.pop(context);
      //                     Navigator.of(context).pushNamed(screen);
      //                   },
      //                   child: const Text('Open Screen'),
      //                 ),
      //               TextButton(
      //                 onPressed: () => Navigator.of(context).pop(),
      //                 child: const Text('Dismiss'),
      //               ),
      //             ],
      //           ),
      //         );
      //       },
      //     );
      //   }
      // }
    });

    // Handling the initial message received when the app is launched from dead (killed state)
    // When the app is killed and a new notification arrives when user clicks on it
    // It gets the data to which screen to open
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      print('object');
      if (message != null) {
        _handleNotificationClick(context, message);
      }
    });

    // Handling a notification click event when the app is in the background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('object');

      debugPrint(
          'onMessageOpenedApp: ${message.notification!.title.toString()}');
      _handleNotificationClick(context, message);
    });
  }

  void createAndShowNotification(RemoteNotification notification) {
    flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,

            priority: Priority.high,
            importance: Importance.max,

            // icon: notification.android?.smallIcon,
            // other properties...
          ),
        ),
        payload: 'xcxcxc');
  }

  // Handling a notification click event by navigating to the specified screen
  void _handleNotificationClick(BuildContext context, RemoteMessage message) {
    print('object');

    // final notificationData = message.data;

    // if (notificationData.containsKey('screen')) {
    //   final screen = notificationData['screen'];
    // Navigator.of(context).pushNamed(AppRouterName.login);
    // }
  }
}

// Handler for background messages
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  // await Firebase.initializeApp();
  debugPrint('Handling a background message: ${message.notification!.title}');
  if (message.notification != null) {
    MessagingService().createAndShowNotification(message.notification!);
  }
}
