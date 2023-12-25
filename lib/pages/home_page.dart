import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:package2_flutter/model/user_model.dart';
import 'package:package2_flutter/servise/pref_servise.dart';
import 'package:package2_flutter/servise/secure_storage.dart';

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
    SecureStorage.storeApiKey("Bahrom");
    SecureStorage.loadApiKey().then((value) => {print(value.toString())});

    SecureStorage.removeApiKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
