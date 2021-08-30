import 'package:flutter/material.dart';
import 'package:pet/resource/style/AppColors.dart';
import 'package:pet/resource/style/Dimens.dart';
import 'package:pet/resource/style/TextSize.dart';

PreferredSizeWidget DefaultAppBar({required String text}) {
  return AppBar(
    title: Text(
      text,
      style: TextStyle(color: Colors.black, fontSize: TextSize.SIZE_16),
    ),
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: AppColors.APP_BAR_COLOR,
    toolbarHeight: Dimens.APP_BAR_HEIGHT,
  );
}
