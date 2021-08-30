import 'package:flutter/material.dart';

Widget CustomScrollViewWidget(List<Widget> listWidget) {
  return CustomScrollView(
    slivers: [for (int i = 0; i < listWidget.length; i++) listWidget[i]],
  );
}
