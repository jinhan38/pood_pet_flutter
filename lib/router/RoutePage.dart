import 'package:get/get.dart';
import 'package:pet/binding/HomeScreenControllerBinding.dart';
import 'package:pet/binding/ImageZoomScreenControllerBinding.dart';
import 'package:pet/binding/NavigationScreenControllerBinding.dart';
import 'package:pet/screen/ImageZoomScreen/ImageZoomScreen.dart';
import 'package:pet/screen/ScrollCard/ScrollCardScreen.dart';
import 'package:pet/screen/home/HomeScreen.dart';
import 'package:pet/screen/intro/IntroScreen.dart';
import 'package:pet/screen/navigation/NavigationScreen.dart';
import 'package:pet/screen/pageViewTest/PageViewTestScreen.dart';
import 'package:pet/screen/scrollTest/ScrollTestScreen.dart';
import 'package:pet/widgets/scroll/CardScrollViewWidget.dart';


class RoutePage {

  static movePage(String pageName) {
    Get.toNamed(pageName);
  }

  static moveOffName(String pageName){
    Get.offNamed(pageName);
  }

  static final List<GetPage> getPageList = [
    GetPage(
      name: INTRO_ROUTE,
      page: () => IntroScreen(),
    ),
    GetPage(
      name: NAVIGATION_ROUTE,
      page: () => NavigationScreen(),
      transition: Transition.native,
      binding: NavigationScreenControllerBinding(),
    ),
    GetPage(
      name: HOME_ROUTE,
      page: () => HomeScreen(),
      transition: Transition.rightToLeft,
      binding: HomeScreenControllerBinding(),
    ),
    GetPage(
      name: PAGE_VIEW_TEST,
      page: () => PageViewTestScreen(),
      transition: Transition.rightToLeft,
      // binding: ImageZoomScreenControllerBinding(),
    ),
    GetPage(
      name: IMAGE_ZOOM_SCREEN_ROUTE,
      page: () => ImageZoomScreen(),
      // transition: Transition.rightToLeft,
      binding: ImageZoomScreenControllerBinding(),
    ),
    GetPage(
      name: CARD_SCROLL,
      page: () => ScrollCardScreen(),
      // transition: Transition.rightToLeft,
      // binding: ImageZoomScreenControllerBinding(),
    ),
    GetPage(
      name: TEST_SCROLL,
      page: () => ScrollTestScreen(),
      // transition: Transition.rightToLeft,
      // binding: ImageZoomScreenControllerBinding(),
    ),
  ];

  static const String INTRO_ROUTE = "/intro";
  static const String NAVIGATION_ROUTE = "/navigation";
  static const String HOME_ROUTE = "/home";
  static const String IMAGE_ZOOM_SCREEN_ROUTE = "/imageZoomScreen";
  static const String PAGE_VIEW_TEST = "/pageViewTest";
  static const String CARD_SCROLL = "/cardScroll";
  static const String TEST_SCROLL = "/testScroll";

}
