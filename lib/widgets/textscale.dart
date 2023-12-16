import 'dart:math';

import 'package:flutter/material.dart';

class ScaleSize {
  static double textScaler(BuildContext context,
      {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1920) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}
