import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet/router/RoutePage.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration(milliseconds: 1000), (timer) {
      RoutePage.moveOffName(RoutePage.NAVIGATION_ROUTE);
    });
    return Scaffold(
      body: Image.asset(
        'assets/splash_image.jpg',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
