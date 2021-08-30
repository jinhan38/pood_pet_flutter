import 'package:flutter/cupertino.dart';

Widget CustomSliverGrid(
    {required int gridSpan,
    required int itemCount,
    required Widget Function(int index) child,
    double mainSpacing = 0.0,
    double crossSpacing = 0.0}) {
  return SliverGrid(
      delegate: SliverChildBuilderDelegate((context, index) {
        return child(index);
      }, childCount: itemCount),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridSpan,
          mainAxisSpacing: mainSpacing,
          crossAxisSpacing: crossSpacing));
}
