import 'package:ck_linecode/custompain/sabit.dart';
import 'package:ck_linecode/custompain/wave_left.dart';
import 'package:ck_linecode/custompain/wave_right.dart';
import 'package:flutter/material.dart';

const double sz = 200;

// wave : 555x161
/// p = 551/300 =1.837
/// l = 161/300 = 0.537

//sabit : 151x278
/// p= 278/300 = 0.92
/// l = 151/300 = 0.5
class Customparintsc extends StatelessWidget {
  Customparintsc({super.key, this.ew = false, required this.controller})
      : val = Tween<double>(
                begin: ((-sz * 0.425) - 5), end: (-(-sz * 0.425) + 5))
            .animate(CurvedAnimation(parent: controller, curve: Curves.linear));
  final bool ew;
  final Animation<double> val;
  final AnimationController controller;

  Widget _buildchilf(BuildContext context, Widget? child) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: sz,
            height: sz,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFF4BB1FF).withOpacity(0.25),
                  width: 5,
                ),
                gradient: RadialGradient(
                  center: const Alignment(0.0, 0.0),
                  tileMode: TileMode.clamp,
                  // radius: 0.5,
                  colors: <Color>[
                    const Color.fromARGB(255, 236, 248, 255),
                    const Color(0xFF70d3FF).withOpacity(0.6),
                    const Color(0xFF7CCDFF).withOpacity(0.6),
                    // Color(0xFF7CCDFF),
                    // Color(0xFF70d3FF),
                    // Colors.blue
                  ],
                  stops: const <double>[0.0, 0.98, 1.0],
                )),
          ),
          Positioned(
            left: 5,
            right: 5,
            bottom: 5,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: sz / 2,
              child: ClipOval(
                child: Container(
                  transform: Matrix4.translationValues(-val.value, 0, 0),
                  alignment: Alignment.bottomLeft,
                  child: UnconstrainedBox(
                    child: CustomPaint(
                      size: Size(sz * 1.85, (sz * 0.537).toDouble()),
                      painter: RPSCustomPainter2(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            right: 5,
            bottom: 5,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: sz / 2,
              child: ClipOval(
                child: Container(
                  transform: Matrix4.translationValues(val.value, 0, 0),
                  alignment: Alignment.bottomLeft,
                  child: UnconstrainedBox(
                    child: CustomPaint(
                      size: Size(sz * 1.85, (sz * 0.537).toDouble()),
                      painter: RPSCustomPainter(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            top: 0,
            child: CustomPaint(
              size: Size(
                  (0.5 * sz), (1.8410596026490067 * (sz * 0.92)).toDouble()),
              painter: RPSCustomPainter3(),
            ),
          ),
          // Card(
          //   color: val.value ? Colors.amber : Colors.red,
          //   child: const Text("s"),
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: _buildchilf,
    );
  }
}
