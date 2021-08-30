import 'package:flutter/material.dart';

Widget CustomSliverPersistentHeader(Widget widget, double minHeight,double maxHeight, bool floating, bool pinned ) {
  // var header = MyCustomHeader();
  // header.setWidget(widget, height);
  return SliverPersistentHeader(
    delegate: MyCustomHeader()..setWidget(widget, minHeight, maxHeight),
    floating: floating,
    pinned: pinned,
  );
}

class MyCustomHeader extends SliverPersistentHeaderDelegate {
  late final Widget widget;
  double minHeight = 0;
  double maxHeight = 0;

  setWidget(Widget widget, double minHeight, double maxHeight) {
    this.widget = widget;
    this.minHeight = minHeight;
    this.maxHeight = maxHeight;
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return widget;
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  // @override
  // bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
  //   return oldDelegate.maxHeight != this.maxHeight ||
  //       oldDelegate.minHeight != this.minHeight ||
  //       oldDelegate.child != this.widget;
  // }

  @override
  bool shouldRebuild( MyCustomHeader oldDelegate) {
    return oldDelegate.maxHeight != this.maxHeight ||
        oldDelegate.minHeight != this.minHeight ||
        oldDelegate.widget != this.widget;
  }

  // @override
  // bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
  //     true;
}
