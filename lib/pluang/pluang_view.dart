import 'package:ck_linecode/pluang/pluang_loader.dart';
import 'package:flutter/material.dart';

class PluangLoader extends StatefulWidget {
  const PluangLoader({super.key});

  @override
  State<PluangLoader> createState() => _PluangLoaderState();
}

class _PluangLoaderState extends State<PluangLoader>
    with SingleTickerProviderStateMixin {
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
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
            size: const Size(210, 235), painter: PaintPluang(_controller)),
      ),
    );
  }
}
