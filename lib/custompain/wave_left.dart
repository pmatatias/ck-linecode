import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 1.000090, size.height * 0.5818589);
    path_0.lineTo(size.width * 1.000090, size.height * 0.5818589);
    path_0.lineTo(0, size.height * 0.5818589);
    path_0.lineTo(0, size.height * 0.08035978);
    path_0.cubicTo(
        0,
        size.height * 0.08035978,
        size.width * 0.1730222,
        size.height * -0.02152057,
        size.width * 0.3372444,
        size.height * 0.004147718);
    path_0.cubicTo(
        size.width * 0.5014667,
        size.height * 0.02981600,
        size.width * 0.4912037,
        size.height * 0.1639808,
        size.width * 0.6568818,
        size.height * 0.1830329);
    path_0.cubicTo(
        size.width * 0.8225598,
        size.height * 0.2020850,
        size.width * 1.000079,
        size.height * 0.08033095,
        size.width * 1.000079,
        size.height * 0.08033095);
    path_0.lineTo(size.width * 1.000079, size.height * 0.08035978);
    path_0.cubicTo(
        size.width * 1.000079,
        size.height * 0.08035978,
        size.width * 1.173112,
        size.height * -0.02152057,
        size.width * 1.337335,
        size.height * 0.004147718);
    path_0.cubicTo(
        size.width * 1.501557,
        size.height * 0.02981600,
        size.width * 1.491294,
        size.height * 0.1639808,
        size.width * 1.656972,
        size.height * 0.1830329);
    path_0.cubicTo(
        size.width * 1.822650,
        size.height * 0.2020850,
        size.width * 2.000090,
        size.height * 0.08035978,
        size.width * 2.000090,
        size.height * 0.08035978);
    path_0.lineTo(size.width * 2.000090, size.height * 0.5818589);
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
