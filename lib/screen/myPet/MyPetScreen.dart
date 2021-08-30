import 'package:flutter/material.dart';

class MyPetScreen extends StatefulWidget {
  const MyPetScreen({Key? key}) : super(key: key);

  @override
  _MyPetScreenState createState() => _MyPetScreenState();
}

class _MyPetScreenState extends State<MyPetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("마이펫"));
  }
}
