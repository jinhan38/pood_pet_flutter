import 'package:get/get.dart';
import 'package:pet/controller/HomeScreenController.dart';

class HomeScreenControllerBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenController());
  }

}