import 'package:flutter/material.dart';
import 'package:maapp/waveball/wave_left.dart';

class Customparintsc extends StatefulWidget {
  const Customparintsc({super.key});

  @override
  State<Customparintsc> createState() => _CustomparintscState();
}

class _CustomparintscState extends State<Customparintsc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          CustomPaint(
            size: Size(200, (200 * 1).toDouble()),
            painter: RPSCustomPainter(),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                border: Border.all(
                  color: const Color(0xFF4BB1FF).withOpacity(0.25),
                  width: 5,
                ),
                gradient: const RadialGradient(
                  center: Alignment(0.0, 0.0),
                  tileMode: TileMode.clamp,
                  // radius: 0.5,
                  colors: <Color>[
                    // const Color(0xFF70d3FF).withOpacity(0.6),
                    // const Color(0xFF7CCDFF).withOpacity(0.6),
                    Color(0xFF7CCDFF),
                    // Color(0xFF70d3FF),
                    Colors.blue
                  ],
                  stops: <double>[0.0, .59],
                )),
          )
        ],
      )),
    );
  }
}
