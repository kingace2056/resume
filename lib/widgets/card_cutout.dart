import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(32.366, 100.601);
    path_0.cubicTo(-6.92018, 74.2381, -1.66479, 22.6319, 5.87367, 0.124247);
    path_0.lineTo(141.243, 0.124247);
    path_0.cubicTo(167.089, -1.94345, 175.058, 22.3089, 175.812, 34.6935);
    path_0.lineTo(175.812, 188.801);
    path_0.cubicTo(144.474, 219.17, 96.6583, 183.632, 91.4891, 167.478);
    path_0.cubicTo(86.3199, 151.324, 81.4737, 133.555, 32.366, 100.601);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff654CCA).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
