import 'package:hive/hive.dart';

import '../model/user_model.dart';

class HiveServise {
  static var box = Hive.box("flutter");

  static void storeUser(User user) {
    box.put("user", user.toJson());
  }

  static User loadUser() {
    var user = User.fromJson(box.get("user"));
    return user;
  }

  static void removeUser() {
    box.delete("user");
  }
}



