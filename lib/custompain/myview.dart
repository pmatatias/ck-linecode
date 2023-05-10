
import 'package:flutter/material.dart';

class MyView extends StatelessWidget {
  const MyView({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom paint Demo'),
      ),
      body: Center(
        child: CustomPaint(
          size: const Size(400,400), 
          painter: CurvedPainter(),
        ),
      ),
    );
  }
}

class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;

    var path = Path();
    Offset center  = Offset(size.width/2, size.height/2);
     double radius  =4*size.width/5;

    canvas.drawCircle(center, radius, paint);

    // path.moveTo(0, size.height * 0.7);
    // path.quadraticBezierTo(size.width * 0.25, size.height * 0.7,
    //     size.width * 0.5, size.height * 0.8);
    // path.quadraticBezierTo(size.width * 0.75, size.height * 0.9,
    //     size.width * 1.0, size.height * 0.8);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}