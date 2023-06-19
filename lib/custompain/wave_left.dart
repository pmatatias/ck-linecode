

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*0.4999739,size.height*0.9999814);
    path_0.lineTo(size.width*0.4999739,size.height*0.9999814);
    path_0.lineTo(0,size.height*0.9999814);
    path_0.lineTo(0,size.height*0.1381087);
    path_0.cubicTo(0,size.height*0.1381087,size.width*0.08870527,size.height*0.3473094,size.width*0.1715460,size.height*0.3145658);
    path_0.cubicTo(size.width*0.2543867,size.height*0.2818223,size.width*0.2492554,size.height*0.05124267,size.width*0.3313575,size.height*0.007128392);
    path_0.cubicTo(size.width*0.4133550,size.height*-0.03692395,size.width*0.4997342,size.height*0.1376195,size.width*0.4999739,size.height*0.1381087);
    path_0.lineTo(size.width*0.4999739,size.height*0.1380716);
    path_0.cubicTo(size.width*0.4999739,size.height*0.1380716,size.width*0.5887242,size.height*0.3473094,size.width*0.6715649,size.height*0.3145782);
    path_0.cubicTo(size.width*0.7544056,size.height*0.2818471,size.width*0.7492744,size.height*0.05125506,size.width*0.8313764,size.height*0.007140778);
    path_0.cubicTo(size.width*0.9134784,size.height*-0.03697350,size.width,size.height*0.1381087,size.width,size.height*0.1381087);
    path_0.lineTo(size.width,size.height);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff4bb1ff).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}