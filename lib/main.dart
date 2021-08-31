import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/controller/base/BaseController.dart';
import 'package:pet/router/RoutePage.dart';

import 'controller/HomeScreenController.dart';
import 'screen/intro/IntroScreen.dart';

void main() {
  initService();
  runApp(MyApp());
}

void initService() {
  Get.put(BaseController(), permanent: true);
  Get.put(HomeScreenController(), permanent: true);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var mode = MediaQuery.of(context).platformBrightness;
    return GetMaterialApp(
        title: "Pood",
        theme: ThemeData(
          brightness: Brightness.light,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: RoutePage.INTRO_ROUTE,
        getPages: RoutePage.getPageList);
  }
}
