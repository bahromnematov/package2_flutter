import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';



import 'package:package2_flutter/pages/home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('Young_centre');


  runApp(
    EasyLocalization(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('ja', 'JA'),
          Locale('ko', 'KO')
        ],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: HomePage());
  }
}
