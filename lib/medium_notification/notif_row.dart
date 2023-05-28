import 'package:ck_linecode/dart_extension_6/time_difference.dart';
import 'package:ck_linecode/medium_notification/follow_btn.dart';
import 'package:flutter/material.dart';

import 'avatar_widget.dart';
import 'notif_model.dart';

class NotifRow extends StatelessWidget {
  const NotifRow({super.key, required this.data});
  final NotifModel data;

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.transparent,
      color: Colors.white,

      child: InkWell(
        splashColor: Colors.grey,
        onTap: () {},
        child: Container(
          // margin: const EdgeInsets.only(bottom: 1),
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
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                            text: data.userName,
                            children: [
                              TextSpan(
                                  text: " ${data.notifType.name} ",
                                  style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400)),
                              if (data.articleTitle.isNotEmpty)
                                TextSpan(text: data.articleTitle),
                              if (data.readingListName.isNotEmpty)
                                TextSpan(
                                    text:
                                        " to their list ${data.readingListName}",
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400)),
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          describeFormattedTime(data.time),
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ]),
              ),
              if (data.notifType.id == 3) const FollowBtn()
            ],
          ),
        ),
      ),
    );
  }
}

String describeFormattedTime(String formattedString) {
  final dtT = DateTime.tryParse(formattedString);
  return (dtT != null) ? dtT.getDifferences() : "";
}
