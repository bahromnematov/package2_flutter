import 'dart:convert';

import 'package:package2_flutter/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsServise {
  static storeName(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", name);
  }

  static Future<String?> loadName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name");
  }

  static Future<bool> removeName() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  //Object uchun method

  static storeUser(User user) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String stringuser = jsonEncode(user);
    await prefs.setString("user", stringuser);
  }

  static Future<User?> loadUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringuser = prefs.getString("user");
    if (stringuser == null || stringuser.isEmpty) {
      return null;
    } else {
      Map<String, dynamic> map = jsonDecode(stringuser);
      return User.fromJson(map);
    }
  }

  static Future<bool> removeUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
}
