import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pet/data/model/userInfo/UserInfo.dart';
import 'package:pet/repository/AppRepository.dart';
import 'package:pet/util/CustomBottomSheet.dart';
import 'package:pet/util/CustomDialog.dart';
import 'package:pet/util/CustomSnackBar.dart';

class BaseController extends GetxController {
  static BaseController get to => Get.find();

  late AppRepository appRepository = AppRepository();
  late final Size size;

  UserInfo userInfo =
      UserInfo(user_uuid: "b8832efb-80bc-474d-8a98-2b09c509fcba");

  RxInt pc_id = 0.obs;
  RxBool error = false.obs;
  RxString errorMsg = "".obs;
  RxInt brightMode = 0.obs;

  var customDialog = CustomDialog();
  var customBottomSheet = CustomBottomSheet();
  var customSnackBar = CustomSnackBar();

  showToast(String msg) {
    Fluttertoast.showToast(msg: msg);
  }

  /// true : light, false : dart
  changeTheme(bool mode) {
    Get.changeTheme(mode ? ThemeData.light() : ThemeData.dark());
  }
}
