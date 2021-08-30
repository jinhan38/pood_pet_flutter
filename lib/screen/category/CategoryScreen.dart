import 'package:flutter/material.dart';
import 'package:moor/moor.dart';
import 'package:pet/controller/base/BaseController.dart';
import 'package:pet/resource/style/TextSize.dart';
import 'package:pet/widgets/appBar/CustomAppBar.dart';
import 'package:pet/widgets/scroll/CustomScrollViewWidget.dart';
import 'package:pet/widgets/scroll/CustomSliverList.dart';
import 'package:pet/widgets/scroll/CustomSliverPersistentHeader.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget> listWidget = [];
    listWidget.add(headerFirst());
    listWidget.add(categoryContents(subTitle: '카테고리'));
    listWidget.add(categoryContents(subTitle: '건강특징'));
    listWidget.add(categoryContents(subTitle: '주요 단백질'));

    return Scaffold(
      appBar: DefaultAppBar(text: "카테고리"),
      body: Container(
        child: CustomScrollViewWidget(listWidget),
      ),
    );
  }

  Widget headerFirst() {
    double height = 58;
    // return CustomSliverPersistentHeader(
    //     Container(
    //         height: height,
    //         color: Colors.white,
    //         width: BaseController.to.size.width,
    //         child: customListView()),
    //     height,
    //     false,
    //     false);
    return CustomSliverPersistentHeader(
        Container(
          color: Colors.purple,
          width: BaseController.to.size.width,
          child: Center(
            child: customListView(),
          ),
        ),
        height,
        height * 3,
        true,
        true);
  }

  Widget customListView() {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        scrollArea(areaWidth: 80, title: '사료'),
        scrollArea(areaWidth: 80, title: '간식'),
        scrollArea(areaWidth: 80, title: '영양제'),
        scrollArea(areaWidth: 80, title: '용품'),
        scrollArea(areaWidth: 140, title: '샘플스토어')
      ],
    );
    // This next line does the trick.
  }

  Widget categoryContents({required String subTitle}) {
    print(subTitle);
    return CustomSliverList(
      itemCount: 1,
      widget: Container(
          height: 100,
          color: Colors.white,
          width: BaseController.to.size.width,
          child: eachContainerArea(subTitle: subTitle)),
    );
  }

  Widget eachContainerArea({required String subTitle}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Stack(
          children: [
            categoryTitle(title: subTitle),
            // categoryIconArea(),
          ],
        ),
        // child: categoryTitle(title: subTitle),
      ),
    );
  }

  Widget categoryTitle({required String title}) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget categoryIconArea() {
    return Container(
      height: 500,
      child: Text("iconArea"),
    );
  }

  Widget scrollArea({required String title, required double areaWidth}) {
    return Container(
      width: areaWidth,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: verticalScrollHeaderText(title: title),
        ),
      ),
    );
  }

  Widget verticalScrollHeaderText({required String title}) {
    return Container(
      child: Text(
        title,
        style:
            TextStyle(fontSize: TextSize.SIZE_24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
