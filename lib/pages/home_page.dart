import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MaterialButton(
              child: Text("text1".tr(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
            MaterialButton(
              child: Text(
                "text2".tr(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
            MaterialButton(
              child: Text("text3".tr(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
            MaterialButton(
              child: Text("text3".tr(),
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
              color: Colors.lightBlue,
              onPressed: () {},
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                          child: MaterialButton(
                        onPressed: () {
                          context.setLocale(Locale("uz", "UZ"));
                        },
                        child: Text("Uzbek"),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: Container(
                          height: 50,
                          color: Colors.amber,
                          child: MaterialButton(
                            onPressed: () {
                              context.setLocale(Locale("ru", "RU"));
                            },
                            child: Text("Russia"),
                          ))),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                      child: Container(
                    height: 50,
                    color: Colors.green,
                    child: Center(
                        child: MaterialButton(
                      onPressed: () {
                        context.setLocale(Locale("en", "US"));
                      },
                      child: Text("English"),
                    )),
                  )),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
