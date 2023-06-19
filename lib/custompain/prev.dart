import 'package:ck_linecode/custompain/vovo.dart';
import 'package:flutter/material.dart';

class ViewWabe extends StatefulWidget {
  const ViewWabe({super.key});

  @override
  State<ViewWabe> createState() => _ViewWabeState();
}

class _ViewWabeState extends State<ViewWabe> with TickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Customparintsc(controller: _controller),
            const Divider(),
            Customparintsc(
              ew: true,
              controller: _controller,
            )
          ]),
    );
  }
}
