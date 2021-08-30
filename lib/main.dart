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

//permanent : true로 하면 앱이 종료되기 전까지는 상태를 계속 유지한다
void initService() {
  Get.put(BaseController(), permanent: true);
  Get.put(HomeScreenController(), permanent: true);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var mode = MediaQuery.of(context).platformBrightness;
    // NavigationScreenController.to.changeTheme(mode ==Brightness.light);

    return GetMaterialApp(
      title: "Pood",
      // theme: mode == Brightness.light ? ThemeData.light() : ThemeData.dark(),
      theme: ThemeData.light(),
      initialRoute: RoutePage.INTRO_ROUTE,
      getPages: RoutePage.getPageList,
    );
  }
}
