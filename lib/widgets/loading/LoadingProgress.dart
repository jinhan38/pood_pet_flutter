import 'package:flutter/material.dart';
import 'package:pet/resource/style/Dimens.dart';

Widget loadingProgressNormal() {
  return Container(
    width: Dimens.PROGRESS_NORMAL,
    height: Dimens.PROGRESS_NORMAL,
    child: CircularProgressIndicator(),
  );
}

Widget loadingProgressSmall() {
  return Container(
    width: Dimens.PROGRESS_SMALL,
    height: Dimens.PROGRESS_SMALL,
    child: CircularProgressIndicator(),
  );
}
