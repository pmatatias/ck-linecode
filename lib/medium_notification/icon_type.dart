// icon circle
import 'package:ck_linecode/medium_notification/konstanta.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyIconType extends StatelessWidget {
  const MyIconType({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    IconData iconData;
    Color bgColor;

    switch (type) {
      case "followed you":
        iconData = Icons.person;
        bgColor = kPink;
        break;
      case "clapped for":
        iconData = CupertinoIcons.hand_thumbsup_fill;
        bgColor = kGreen;
        break;
      case "responded to":
        iconData = CupertinoIcons.chat_bubble_2_fill;
        bgColor = kBlue;
        break;
      default:
        iconData = CupertinoIcons.book_fill;
        bgColor = kBlue;
    }

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(50)),
      child: Icon(
        iconData,
        color: Colors.white,
        size: 16,
      ),
    );
  }
}
