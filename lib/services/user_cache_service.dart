import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:jobspot/core/service_locator.dart';
import 'package:jobspot/feature/auth/feature/login/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String USER_CACHE_KEY = 'usercache';

class UserCacheService {
  UserModel? _user;
  UserModel? get user => _user;
  SharedPreferences get sharedPrefs => serviceLocator<SharedPreferences>();
  Future<bool> saveUser(UserModel user) async {
    var map = user.toJson();
    FirebaseMessaging.instance.subscribeToTopic(user.id.toString());
    bool saved = await sharedPrefs.setString(USER_CACHE_KEY, jsonEncode(map));
    if (saved) {
      _user = await getUser();
    }
    return saved;
  }

  Future<UserModel?> getUser() async {
    UserModel usr;
    var userMap = sharedPrefs.getString(USER_CACHE_KEY);
    if (userMap == null) {
      return null;
    }
    usr = UserModel.fromJson(jsonDecode(userMap));
    _user = usr;
    return usr;
  }

  Future<bool> deleteUser() async {
    FirebaseMessaging.instance.unsubscribeFromTopic(user?.id.toString() ?? '');

    _user = null;

    return await sharedPrefs.remove(USER_CACHE_KEY);
  }
}
