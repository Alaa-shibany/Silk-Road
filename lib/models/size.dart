import 'dart:math';

import 'package:flutter/cupertino.dart';

class ScaleSize1 {
  static double textScaleFactor(BuildContext context,
      {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 600) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
