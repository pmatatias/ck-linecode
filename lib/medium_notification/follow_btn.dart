import 'package:flutter/material.dart';

import 'konstanta.dart';

class FollowBtn extends StatelessWidget {
  const FollowBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: kGreen,
      height: 18,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      onPressed: () {},
      child: const Text(
        "Follow",
        textScaleFactor: 0.8,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
