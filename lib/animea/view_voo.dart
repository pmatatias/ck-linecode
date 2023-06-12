import 'package:ck_linecode/animea/voo.dart';
import 'package:flutter/material.dart';



class AnimeaScreen extends StatefulWidget {
  const AnimeaScreen({super.key});

  @override
  State<AnimeaScreen> createState() => _AnimeaScreenState();
}

class _AnimeaScreenState extends State<AnimeaScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);
    // _controller.addListener(() {
    //   _playAnimation();
    // });
    _controller.repeat(reverse: true);
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      await _controller.reverse().orCancel;
    } on TickerCanceled {
      // the animation got canceled, probably because it was disposed of
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   transform: Matrix4.translationValues(10, 0, 0),
              //   width: 16,
              //   height: 16,
              //   decoration: const BoxDecoration(
              //     color: Colors.indigo,
              //     shape: BoxShape.circle,
              //   ),
              // ),
              CenterDot(ctrl: _controller),

              // Container(
              //   transform: Matrix4.translationValues(-10, 0, 0),
              //   width: 16,
              //   height: 16,
              //   decoration: const BoxDecoration(
              //     color: Colors.indigo,
              //     shape: BoxShape.circle,
              //   ),
              // )
            ],
          ),
          const Divider(),
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.lerp(
                    BorderRadius.circular(20), BorderRadius.circular(10), 2)),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _playAnimation();
      }),
    );
  }
}
