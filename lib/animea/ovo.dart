
import 'package:flutter/material.dart';

class AnimeaScreen extends StatefulWidget {
  const AnimeaScreen({super.key});

  @override
  State<AnimeaScreen> createState() => _AnimeaScreenState();
}

class _AnimeaScreenState extends State<AnimeaScreen>
    with SingleTickerProviderStateMixin {
  double space = 10;
  double centerRad = 10;

  late AnimationController ctrl;
  // late Animation<double> centerRad;
  late Animation<double> spaceIn;
  late Animation<double> spaceOut;

  @override
  void initState() {
    super.initState();
    ctrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    spaceIn = Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: ctrl, curve: const Interval(0.75, 1.0, curve: Curves.easeIn)));
    spaceOut = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: ctrl, curve: const Interval(0.0, 0.25, curve: Curves.easeOut)));

    ctrl.addListener(() {
      if (ctrl.value >= 0.75 && ctrl.value <= 1) {
        space = spaceIn.value * 18;
        centerRad = spaceIn.value + 1;
      } else if (ctrl.value >= 0 && ctrl.value <= 0.25) {
        space = spaceOut.value * 18;
        centerRad = spaceOut.value + 1;
      }
      setState(() {});
    });

    // ctrl.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          width: 120,
          height: 80,

          // color: Colors.grey,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Transform.translate(
              //     offset: Offset(space * cos(pi), space * sin(pi)),
              //     child: const Dot()),
              Transform.scale(
                  scaleX: 1,
                  // scale: centerRad,
                  child: const Dot(color: Colors.black)),
              // Transform.translate(
              //     offset: Offset(space * cos(2 * pi), space * sin(2 * pi)),
              //     child: const Dot()),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  const Dot(
      {super.key, this.size = const Size(15, 15), this.color = Colors.indigo});
  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
