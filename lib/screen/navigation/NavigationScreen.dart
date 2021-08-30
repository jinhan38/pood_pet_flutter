import 'package:flutter/material.dart';
import 'package:pet/controller/NavigationScreenController.dart';
import 'package:pet/controller/base/BaseController.dart';
import 'package:pet/router/RoutePage.dart';
import 'package:pet/screen/ScrollCard/ScrollCardScreen.dart';
import 'package:pet/screen/category/CategoryScreen.dart';
import 'package:pet/screen/home/HomeScreen.dart';
import 'package:pet/screen/myPet/MyPetScreen.dart';
import 'package:pet/screen/myPood/MyPoodScreen.dart';
import 'package:pet/screen/search/SearchScreen.dart';
import 'package:pet/widgets/base/BaseAppBar.dart';
import 'package:pet/widgets/button/CustomButton.dart';
import 'package:pet/widgets/pageView/imagePageView/CustomImagePageView.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  var checkLate = false;
  int _currentIndex = 0;

  late final List<Widget> screenList;
  final Map<String, IconData> _icons = const {
    'Home': Icons.home,
    'Category': Icons.search,
    'Search': Icons.queue_play_next,
    'MyPet': Icons.file_download,
    'MyPood': Icons.menu,
  };

  @override
  void initState() {
    screenList = [
      HomeScreen(),
      CategoryScreen(),
      SearchScreen(),
      MyPetScreen(),
      MyPoodScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!checkLate) {
      BaseController.to.size = MediaQuery.of(context).size;
      checkLate = true;
    }
    return Scaffold(
      body: screenList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: _icons
            .map((title, icon) => MapEntry(
                title,
                BottomNavigationBarItem(
                    icon: Icon(icon, size: 30), title: Text(title))))
            .values
            .toList(),
      ),
    );
  }

  Widget bodyWidget() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  RoutePage.movePage(RoutePage.HOME_ROUTE);
                },
                child: Text("Home으로 이동")),
            ElevatedButton(
                onPressed: () {
                  RoutePage.movePage(RoutePage.PAGE_VIEW_TEST);
                },
                child: Text("pageViewTest")),
            ElevatedButton(
                onPressed: () {
                  RoutePage.movePage(RoutePage.CARD_SCROLL);
                },
                child: Text("CARD_SCROLL")),
            ElevatedButton(
                onPressed: () {
                  RoutePage.movePage(RoutePage.TEST_SCROLL);
                },
                child: Text("TEST_SCROLL")),
            DefaultButton(() {
              BaseController.to.customSnackBar.showSnackBar("디폴트버튼", "클릭");
            }, "디폴트 버튼"),
          ],
        ),
      ),
    );
  }
}
