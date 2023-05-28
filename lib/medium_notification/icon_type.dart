// icon circle
import 'package:ck_linecode/medium_notification/konstanta.dart';
import 'package:ck_linecode/medium_notification/notif_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyIconType extends StatelessWidget {
  const MyIconType({super.key, required this.type});

  final NotifType type;

  @override
  Widget build(BuildContext context) {

    /// display nothing 
    if (type.id >4) {
      return const SizedBox();
    }
    IconData iconData;
    Color bgColor;
    // Color bgColor = switch (type.id) {
      
    //   _ => kBlue,
    // };

    switch (type.id) {
      case 1:
        iconData = CupertinoIcons.chat_bubble_2_fill;
        bgColor = kBlue;
        break;
      
      case 2:
        iconData = CupertinoIcons.hand_thumbsup_fill;
        bgColor = kGreen;
        break;
      case 3:
        iconData = Icons.person;
        bgColor = kPink;
        break;
        case 4:
        iconData = CupertinoIcons.eyedropper;
        bgColor = kOrange;
        break;
      default:
        iconData = CupertinoIcons.book_fill;
        bgColor = kBlue;
    }

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(50)),
      child: Icon(iconData, color: Colors.white, size: 14),
    );
  }
}
