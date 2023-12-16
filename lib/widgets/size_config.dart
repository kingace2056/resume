import 'package:flutter/material.dart';

class TrueSize {
  static double getHeight(BuildContext context, double height) {
    final devHeight = MediaQuery.of(context).size.height;
    double val = (height * devHeight / 1080);
    return val;
  }

  static double getWidth(BuildContext context, double width) {
    final devWidth = MediaQuery.of(context).size.width;
    double val = (width * devWidth / 1920);
    return val;
  }
}
