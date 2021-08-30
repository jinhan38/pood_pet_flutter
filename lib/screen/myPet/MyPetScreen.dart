import 'package:flutter/material.dart';
import 'package:pet/controller/base/BaseController.dart';
import 'package:pet/widgets/appBar/CustomAppBar.dart';
import 'package:pet/widgets/scroll/CustomSliverAppBar.dart';
import 'package:pet/widgets/scroll/CustomSliverGrid.dart';
import 'package:pet/widgets/scroll/CustomSliverPersistentHeader.dart';

class MyPetScreen extends StatefulWidget {
  const MyPetScreen({Key? key}) : super(key: key);

  @override
  _MyPetScreenState createState() => _MyPetScreenState();
}

class _MyPetScreenState extends State<MyPetScreen> {
  List<Text> dataList = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 30; i++) {
      dataList.add(Text("$i 번째"));
    }
    double height = 60;
    return Scaffold(
        appBar: DefaultAppBar(text: "마이펫"),
        body: CustomScrollView(
          slivers: [
            CustomSliverPersistentHeader(
                Container(
                  color: Colors.purple,
                  width: BaseController.to.size.width,
                  child: Center(
                    child: Text(
                      "첫번째 헤더",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
                height,
                height * 3,
                true,
                true),
            // renderSliverGrid(),
            CustomSliverGrid(
              crossSpacing: 20.0,
                mainSpacing: 20.0,
                gridSpan: 4,
                itemCount: dataList.length,
                child: (int index) => getGridSliver(index)),
            // CustomSliverGrid(4, (index) => getGridSliver(index), dataList)
          ],
        ));
  }

  Widget getGridSliver(int index) {
    return Container(
        color: Colors.red, alignment: Alignment.center, child: dataList[index]);
  }
}
