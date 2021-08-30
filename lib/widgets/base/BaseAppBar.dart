
import 'package:flutter/material.dart';
import 'package:pet/resource/Strings.dart';

PreferredSizeWidget BaseAppBar(){
  return AppBar(
    title: Text(Strings.appName),
  );
}
