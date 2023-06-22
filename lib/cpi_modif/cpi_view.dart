import 'package:ck_linecode/cpi_modif/plunag.dart';
import 'package:ck_linecode/cpi_modif/plunag_xd.dart';
import 'package:ck_linecode/cpi_modif/xd_draw.dart';
import 'package:flutter/material.dart';

import 'last_try_xd.dart';

class CPImodif extends StatefulWidget {
  const CPImodif({super.key});

  @override
  State<CPImodif> createState() => _CPImodifState();
}

class _CPImodifState extends State<CPImodif> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const CircularProgressIndicator.adaptive(
            //     backgroundColor: Colors.white, strokeWidth: 5),
            // const Divider(),
            // const CircularProgressIndicator(),
            // const Divider(),
            // const CustomProgressIndicator(),
            // const Divider(),
            // const Plua(),
            const Divider(),
            CustomPaint(
              size: Size(50, (50 * 1.1179245283018868).toDouble()),
              painter: PlunagPainter(_controller),
            ),
            const Divider(),
            const SizedBox(height: 50),
            CustomPaint(
              size: Size(50, (50 * 1.119838962837213).toDouble()),
              painter: Plunag2(_controller),
            ),
            // const SizedBox(height: 50),
            // CustomPaint(
            //   size: Size(50, (50 * 1.119838962837213).toDouble()),
            //   painter: Plunag2copy(),
            // ),
            // SizedBox(
            //   height: 200,
            //   width: 200,
            //   child: CustomPaint(
            //     painter: AnimatedPathPainter(_controller),
            //   ),
            // ),
            const Divider(),
            CustomPaint(
              size: const Size(210.448, 235.397),
              painter: DrawXDu(_controller),
            ),
            // CustomPaint(
            //   size: Size(50, (50 * 1.3390339347592306).toDouble()),
            //   painter: DrawXDu(_controller),
            // ),
            const Divider(),

            CustomPaint(
              size: Size(
                  50,
                  (50 * 1.1185524916438772)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: LastTryXD(),
            )
          ],
        ),
      ),
    );
  }
}
