import 'dart:math' as math;

import 'package:flutter/material.dart';
const double _kMinCircularProgressIndicatorSize = 36.0;
const int _kIndeterminateCircularDuration = 1333 * 2222;
int kPath = _kIndeterminateCircularDuration ~/ 1333;
int kRotae = _kIndeterminateCircularDuration ~/ 2222;
class CustomProgressIndicator extends StatefulWidget {
  const CustomProgressIndicator({super.key});

  @override
  State<CustomProgressIndicator> createState() =>
      _CustomProgressIndicatorState();
}



class _CustomProgressIndicatorState extends State<CustomProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // late Animation<double> _endPoint;
  late Animation<double> _startPoint;
  final Animatable<double> _strokeHeadTween = CurveTween(
    curve: const Interval(0.0, 0.5, curve: Curves.fastOutSlowIn),
  ).chain(CurveTween(
    curve: SawTooth(kPath),
  ));
  final Animatable<double> _strokeTailTween = CurveTween(
    curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
  ).chain(CurveTween(
    curve: SawTooth(kPath),
  ));
  final Animatable<double> _offsetTween = CurveTween(curve: SawTooth(kPath));
  final Animatable<double> _rotationTween = CurveTween(curve: SawTooth(kRotae));

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration:  Duration(seconds: kPath))
          ..repeat();

    _startPoint = Tween(begin: 0.2, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return CustomPaint(
            painter: ProgressPainter(
                headValue: _strokeHeadTween.evaluate(_controller),
                offsetValue: _offsetTween.evaluate(_controller),
                rotationValue: _rotationTween.evaluate(_controller),
                tailValue: _strokeTailTween.evaluate(_controller)),
            child: const SizedBox(
              height: 40,
              width: 40,
            ),
          );
        });
  }
}

class ProgressPainter extends CustomPainter {
  // final double value;
  // final double valueStart;

  final double headValue;
  final double tailValue;
  final double offsetValue;
  final double rotationValue;
  static const double _epsilon = .001;

  ProgressPainter(
      {required this.headValue,
      required this.offsetValue,
      required this.rotationValue,
      required this.tailValue});

  @override
  void paint(Canvas canvas, Size size) {
    // final paint = Paint()
    //   ..color = Colors.blue
    //   ..strokeWidth = 5.0
    //   ..style = PaintingStyle.stroke;

    // final center = Offset(size.width / 2, size.height / 2);
    // final radius =
    //     math.min(size.width / 2, size.height / 2) - paint.strokeWidth / 2;

    // canvas.drawCircle(center, radius, paint);

    final progressPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    // final progressAngle = value * math.pi * 2;
    // final staAngle = valueStart * math.pi * 2;
    const double startAngle = -math.pi / 2.0;

    final arcSweep = math.max(
        headValue * 3 / 2 * math.pi - tailValue * 3 / 2 * math.pi, _epsilon);

    final arcStart = startAngle +
        tailValue * 3 / 2 * math.pi +
        rotationValue * math.pi * 2.0 +
        offsetValue * 0.5 * math.pi;
    canvas.drawArc(
        Offset.zero & size, arcStart, arcSweep, false, progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
