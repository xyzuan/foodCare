import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodcarev1/routes/page_names.dart';
import 'package:foodcarev1/routes/page_routes.dart';
import 'package:get/get.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PageName.splash,
      getPages: PageRoutes.pages,
      builder: (BuildContext context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child ?? Container(),
        );
      },
    );
  }
}
