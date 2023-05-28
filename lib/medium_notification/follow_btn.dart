import 'package:flutter/material.dart';

import 'konstanta.dart';

class FollowBtn extends StatefulWidget {
  const FollowBtn({super.key});

  @override
  State<FollowBtn> createState() => _FollowBtnState();
}

class _FollowBtnState extends State<FollowBtn> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: kGreen)),
      color: isPressed ? null : kGreen,
      height: 18,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      onPressed: () {
        isPressed = !isPressed;
        setState(() {});
      },
      child: Text(
        isPressed ? "Unfollow" : "Follow",
        textScaleFactor: 0.8,
        style: TextStyle(color: isPressed ? kGreen : Colors.white),
      ),
    );
  }
}
