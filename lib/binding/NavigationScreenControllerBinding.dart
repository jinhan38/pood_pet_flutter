import 'package:get/get.dart';
import 'package:pet/binding/base/BaseBinding.dart';
import 'package:pet/controller/NavigationScreenController.dart';

class NavigationScreenControllerBinding extends BaseBinding {


  @override
  void dependencies() {
    Get.lazyPut(() => NavigationScreenController());
  }

}