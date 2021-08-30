import 'package:flutter/material.dart';

Widget CustomSliverAppBar(
    {required Widget child,
    required double toolbarHeight,
    required double expandedHeight,
    required double collapsedHeight,
    required bool floating,
    required bool pinned}) {
  return SliverAppBar(
    title: child,
    toolbarHeight: toolbarHeight,
    expandedHeight: expandedHeight,
    collapsedHeight: collapsedHeight,
    floating: floating,
    pinned: pinned,
  );
}
