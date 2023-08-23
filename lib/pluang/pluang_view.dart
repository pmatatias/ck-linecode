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
      duration: const Duration(seconds: 20000),
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
        child: Column(
          children: [
            CustomPaint(
                size: const Size(210, 235), painter: PaintPluang(_controller)),
            // const CustomProgressIndicator()
            // const LinearProgressIndicator()
          ],
        ),
      ),
    );
  }
}

String bs =
    "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAYAAADimHc4AAAABHNCSVQICAgIfAhkiAAAIABJREFUeJztnXmYHVWd9z/nVN2lt3R30p3urIQkhCSQEMISdjCIEEZREYbNDcdxXubl9cGRxdFBZdwQlRl1RHnAEXVEUV9FUXYxISQhZCH7TrbO2vt6b997q855/zhVdW9337r3dgewn+fll6e607fqVJ3z/Z3z209deIfeof+fSfytO1CEBCfeR+0–";
