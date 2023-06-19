import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5000225, size.height);
    path_0.lineTo(size.width * 0.5000225, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.1381087);
    path_0.cubicTo(
        0,
        size.height * 0.1381087,
        size.width * 0.08650719,
        size.height * -0.03698589,
        size.width * 0.1686146,
        size.height * 0.007128392);
    path_0.cubicTo(
        size.width * 0.2507220,
        size.height * 0.05124267,
        size.width * 0.2455908,
        size.height * 0.2818223,
        size.width * 0.3284261,
        size.height * 0.3145658);
    path_0.cubicTo(
        size.width * 0.4112614,
        size.height * 0.3473094,
        size.width * 0.5000171,
        size.height * 0.1380592,
        size.width * 0.5000171,
        size.height * 0.1380592);
    path_0.lineTo(size.width * 0.5000171, size.height * 0.1381087);
    path_0.cubicTo(
        size.width * 0.5000171,
        size.height * 0.1381087,
        size.width * 0.5865297,
        size.height * -0.03698589,
        size.width * 0.6686371,
        size.height * 0.007128392);
    path_0.cubicTo(
        size.width * 0.7507446,
        size.height * 0.05124267,
        size.width * 0.7456133,
        size.height * 0.2818223,
        size.width * 0.8284486,
        size.height * 0.3145658);
    path_0.cubicTo(size.width * 0.9112839, size.height * 0.3473094, size.width,
        size.height * 0.1381087, size.width, size.height * 0.1381087);
    path_0.lineTo(size.width, size.height);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff84caff).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
