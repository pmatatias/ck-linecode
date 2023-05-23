import 'package:ck_linecode/medium_notification/notif_model.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'icon_type.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key, required this.data});
  final NotifModel data;

  @override
  Widget build(BuildContext context) {
    final showTxt = data.imageAsset == null;

    return Stack(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: showTxt
              ? Color.fromRGBO(
                  Random().nextInt(255),
                  Random().nextInt(255),
                  Random().nextInt(255),
                  1,
                )
              : Colors.transparent,
          foregroundImage: showTxt
              ? null
              : Image.asset(
                  '${data.imageAsset}',
                  errorBuilder: (context, error, stackTrace) =>
                      const FlutterLogo(),
                ).image,
          child: showTxt
              ? Text(
                  data.userName[0],
                  style: const TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )
              : null,
        ),
        Positioned(
          bottom: 1,
          right: 0,
          child: MyIconType(type: data.notifType),
        )
      ],
    );
  }
}
