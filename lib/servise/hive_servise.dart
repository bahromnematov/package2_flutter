import 'package:hive/hive.dart';

import '../model/user_model.dart';

class HiveService {
  static var box = Hive.box("Young_centre");

  static void storeUser(User user) async {
    box.put("user", user.toJson());
  }

  static User loadUser() {
    var user = User.fromJson(box.get("user"));
    return user;
  }

  static void removeUser() async {
    box.delete("user");
  }
}
