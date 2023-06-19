import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter4 extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Paint paint0Fill = Paint()..style=PaintingStyle.fill;
paint0Fill.shader = ui.Gradient.radial(Offset(size.width*0.5000000,size.height*0.5000000),size.width*0.5000000, [const Color(0xff84caff).withOpacity(0.369),const Color(0xff7ccdff).withOpacity(0.455),const Color(0xff64bdff).withOpacity(0.11),const Color(0xff70d3ff).withOpacity(0.588)], [0,0,0,1]);
canvas.drawCircle(Offset(size.width*0.5000000,size.height*0.5000000),size.width*0.5000000,paint0Fill);

Paint paint1Stroke = Paint()..style=PaintingStyle.stroke..strokeWidth=size.width*0.03333333;
paint1Stroke.color=const Color.fromRGBO(75,177,255,0.25).withOpacity(1.0);
canvas.drawCircle(Offset(size.width*0.5000000,size.height*0.5000000),size.width*0.4833333,paint1Stroke);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}