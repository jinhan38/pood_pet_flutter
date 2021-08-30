import 'package:flutter/material.dart';
import 'package:pet/controller/base/BaseController.dart';
import 'package:pet/widgets/appBar/CustomAppBar.dart';
import 'package:pet/widgets/scroll/CustomScrollViewWidget.dart';
import 'package:pet/widgets/scroll/CustomSliverAppBar.dart';
import 'package:pet/widgets/scroll/CustomSliverPersistentHeader.dart';
import 'package:pet/widgets/scroll/CustomSliverToBoxAdapter.dart';

class ScrollTestScreen extends StatefulWidget {
  @override
  _ScrollTestScreenState createState() => _ScrollTestScreenState();
}

class _ScrollTestScreenState extends State<ScrollTestScreen> {
  List<String> dataList = [];
  double safePadding = 0;

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 30; i++) {
      dataList.add("$i번 아이템");
    }

    List<Widget> listWidget = [];
    // listWidget.add(CustomSliverAppBar(
    //     child: Text("앱바"), height: 50, floating: true, pinned: true));
    listWidget.add(headerFirst());
    listWidget.add(boxAdapter());
    listWidget.add(headerSecond());
    listWidget.add(setSliverList(dataList: dataList));

    return Scaffold(
      appBar: DefaultAppBar(text: "앱바"),
      body: Container(
        child: CustomScrollViewWidget(listWidget),
      ),
    );
  }

  Widget headerFirst() {
    double height = 60;
    return CustomSliverPersistentHeader(
        Container(
          height: height,
          color: Colors.purple,
          width: BaseController.to.size.width,
          child: Text(
            "첫번째 헤더",
            style: TextStyle(fontSize: 30),
          ),
        ),
        height,
        false,
        false);
  }

  Widget headerSecond() {
    double height = 70;
    return CustomSliverPersistentHeader(
        Container(
          height: height,
          color: Colors.yellow,
          width: BaseController.to.size.width,
          child: Text("두번째 헤더"),
        ),
        height,
        true,
        true);
  }

  Widget boxAdapter() => CustomSliverToBoxAdapter(
      Container(color: Colors.green, height: 300, child: Text("boxAdapter")));

  Widget setSliverList({required List<String> dataList}) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return listItemWidget(dataList: dataList, index: index);
      }, childCount: dataList.length),
    );
  }

  Widget listItemWidget({required List<String> dataList, required int index}) {
    final Radius radius = Radius.circular(20);
    double itemSize = 150;
    return Container(
      height: itemSize,
      width: BaseController.to.size.width,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: radius, topRight: radius),
        ),
        color: Colors.green,
        child: Row(
          children: [
            Spacer(),
            Text(dataList[index]),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
