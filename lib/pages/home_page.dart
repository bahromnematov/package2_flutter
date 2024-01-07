import 'package:flutter/material.dart';
import 'package:package2_flutter/model/user_model.dart';
import 'package:package2_flutter/servise/hive_servise.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var user = User("101", "asdff@gmail.com", "12345678");
    HiveServise.storeUser(user);

   var user2= HiveServise.loadUser();
   print(user2.toJson().toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.red,
    ));
  }
}
