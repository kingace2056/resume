import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1838977, size.height * 0.5005025);
    path_0.cubicTo(
        size.width * -0.03931920,
        size.height * 0.3693438,
        size.width * -0.009459034,
        size.height * 0.1125965,
        size.width * 0.03337312,
        size.height * 0.0006181443);
    path_0.lineTo(size.width * 0.8025170, size.height * 0.0006181443);
    path_0.cubicTo(
        size.width * 0.9493693,
        size.height * -0.009668905,
        size.width * 0.9946477,
        size.height * 0.1109896,
        size.width * 0.9989318,
        size.height * 0.1726045);
    path_0.lineTo(size.width * 0.9989318, size.height * 0.9393085);
    path_0.cubicTo(
        size.width * 0.8208750,
        size.height * 1.090398,
        size.width * 0.5491949,
        size.height * 0.9135920,
        size.width * 0.5198244,
        size.height * 0.8332239);
    path_0.cubicTo(
        size.width * 0.4904540,
        size.height * 0.7528557,
        size.width * 0.4629187,
        size.height * 0.6644527,
        size.width * 0.1838977,
        size.height * 0.5005025);
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
