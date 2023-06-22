import 'package:flutter/material.dart';
import 'dart:math';

import 'package:intl/intl.dart';

class Clock extends StatefulWidget {
  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> with TickerProviderStateMixin {
  late final ctrl = AnimationController.unbounded(vsync: this);
  bool down = false;
  final timeNotifier = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    _startTime();
    ctrl.addListener(() => timeNotifier.value = ctrl.value.round());
  }

  _startTime() async {
    print('_startTime');
    while (true) {
      final now = DateTime.now();
      final ms = 1000 - now.millisecond;
      print('wait ${ms}ms');
      await Future.delayed(Duration(milliseconds: ms));
      await ctrl.animateTo(
        (ctrl.value + 1).roundToDouble(),
        duration: const Duration(milliseconds: 400),
        curve: (ctrl.value % 20) < 10? Curves.elasticOut : Curves.bounceOut,
      );
    }
  }

  static final offset1 = Tween(begin: const Offset(0, 1), end: const Offset(0, 0));
  static final offset2 = Tween(begin: const Offset(0, -1), end: const Offset(0, 0));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final renderBox = context.findRenderObject() as RenderBox;
          final side = constraints.biggest.shortestSide;
          return Flow(
            delegate: ClockDelegate(ctrl),
            children: [
              // clock face, index 0
              CustomPaint(
                painter: ClockPainter(),
                child: Center(
                  child: SizedBox.fromSize(
                    size: Size.square(side * 0.5),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        const Text('you can click and drag the orange clock\'s hand', textScaleFactor: 1.25, textAlign: TextAlign.center),
                        AnimatedBuilder(
                          animation: timeNotifier,
                          builder: (context, child) {
                            final dt = DateTime.fromMillisecondsSinceEpoch(timeNotifier.value * 1000);
                            final timeStr = DateFormat.ms().format(dt);

                            Widget digitsMapper(idx) {
                              if (idx == -1) return const Text(' ');
                              final text = Text(timeStr[idx],
                                style: const TextStyle(color: Colors.white30),
                                key: ValueKey(timeStr[idx]),
                              );
                              if (idx == 4) return text;

                              final begin0 = 0.1 * (3 - idx);
                              final begin1 = 0.1 * idx;
                              return ClipRect(
                                child: AnimatedSwitcher(
                                  duration: down? Duration.zero : const Duration(milliseconds: 600),
                                  switchInCurve: Interval(begin0, begin0 + 0.7, curve: Curves.easeInOutBack),
                                  switchOutCurve: Interval(begin1, begin1 + 0.7, curve: Curves.easeInOut),
                                  transitionBuilder: (child, animation) => SlideTransition(
                                    position: (animation.value == 1? offset1 : offset2).animate(animation),
                                    child: child,
                                  ),
                                  child: text,
                                ),
                              );
                            }

                            return FittedBox(
                              alignment: Alignment.bottomCenter,
                              child: Row(children: [0, 1, -1, 3, 4].map(digitsMapper).toList()),
                            );
                          }
                        ),
                      ],
                    )
                  ),
                ),
              ),
              // minute's hand, index 1
              SizedBox.fromSize(
                size: Size(10, side * 0.7 * 0.5),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                    color: down? Colors.teal : Colors.orange,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: GestureDetector(
                    onPanStart: (d) => setState(() => down = true),
                    onPanEnd: (d) => setState(() {
                      down = false;
                      _startTime();
                    }),
                    onPanUpdate: (d) {
                      final localPosition = renderBox.globalToLocal(d.globalPosition);
                      final angle = (localPosition - renderBox.size.center(Offset.zero)).direction + pi / 2;
                      final minutes = (60 * angle / (2 * pi)).floor();
                      final seconds = ctrl.value % 60;
                      ctrl.value = minutes * 60 + seconds;
                    },
                  ),
                ),
              ),
              // second's hand, index 2
              SizedBox.fromSize(
                size: Size(4, side * 0.9 * 0.5),
                child: const Material(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: Colors.black87,
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}

class ClockDelegate extends FlowDelegate {
  ClockDelegate(this.ctrl) : super(repaint: ctrl);

  final AnimationController ctrl;

  @override
  void paintChildren(FlowPaintingContext context) {
    final center = context.size.center(Offset.zero);

    context.paintChild(0);

    final minutesSize = context.getChildSize(1)!;
    final minutesMatrix = composeMatrixFromOffsets(
      rotation: (ctrl.value / 60) * 2 * pi / 60,
      translate: center,
      anchor: minutesSize.bottomCenter(Offset(0, -minutesSize.width / 2)),
    );
    context.paintChild(1, transform: minutesMatrix);

    final secondsSize = context.getChildSize(2)!;
    final secondsMatrix = composeMatrixFromOffsets(
      rotation: (ctrl.value % 60) * 2 * pi / 60,
      translate: center,
      anchor: secondsSize.bottomCenter(Offset(0, -(secondsSize.width / 2 + secondsSize.height * 0.1))),
    );
    context.paintChild(2, transform: secondsMatrix);
  }
  
  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    if (i != 0) return BoxConstraints.loose(Size.infinite);
    return super.getConstraintsForChild(i, constraints);
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) => false;
}

class ClockPainter extends CustomPainter {
  BoxPainter? painter;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final ringWidth = size.shortestSide * 0.05;
    painter ??= BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: ringWidth, color: Colors.white30),
      color: Colors.black26,
    ).createBoxPainter();
    painter!.paint(canvas, Offset.zero, ImageConfiguration(size: size));

    final paint = Paint()
      ..color = Colors.black45
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;
    final matrix = composeMatrixFromOffsets(anchor: center, translate: center, rotation: pi / 30);
    final p1 = center.translate(0, -(size.shortestSide * 0.5 - ringWidth * 1.5));
    final p2 = p1.translate(0, ringWidth);
    final p3 = p1.translate(0, ringWidth * 2);
    for (int i = 0; i < 60; i++) {
      canvas.drawLine(p1, i % 5 == 0? p3 : p2, paint);
      canvas.transform(matrix.storage);
    }
  }

  @override
  bool shouldRepaint(ClockPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ClockPainter oldDelegate) => false;
}

Matrix4 composeMatrixFromOffsets({
  double scale = 1,
  double rotation = 0,
  Offset translate = Offset.zero,
  Offset anchor = Offset.zero,
}) {
  final double c = cos(rotation) * scale;
  final double s = sin(rotation) * scale;
  final double dx = translate.dx - c * anchor.dx + s * anchor.dy;
  final double dy = translate.dy - s * anchor.dx - c * anchor.dy;
  return Matrix4(c, s, 0, 0, -s, c, 0, 0, 0, 0, 1, 0, dx, dy, 0, 1);
}