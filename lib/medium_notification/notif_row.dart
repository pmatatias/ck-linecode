import 'package:ck_linecode/medium_notification/follow_btn.dart';
import 'package:flutter/material.dart';

import 'avatar_widget.dart';
import 'notif_model.dart';

class NotifRow extends StatelessWidget {
  const NotifRow({super.key, required this.data});
  final NotifModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 1),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AvatarWidget(data: data),
          const SizedBox(width: 16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.black),
                    text: data.userName,
                    children: [
                      TextSpan(
                          text: " ${data.notifType} ",
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w400)),
                      if (data.articleTitle.isNotEmpty)
                        TextSpan(text: data.articleTitle),
                    ]),
              ),
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  data.time,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              )
            ],
          )),
          if (data.notifType == "followed you") const FollowBtn()
        ],
      ),
    );
  }
}
