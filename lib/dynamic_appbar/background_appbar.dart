import 'package:ck_linecode/dynamic_appbar/palette.dart';
import 'package:ck_linecode/dynamic_appbar/widgets/icon_txt_row.dart';
import 'package:flutter/material.dart';

import 'constanta.dart';

class MyBackgroundAppbar extends StatelessWidget {
  const MyBackgroundAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kToolbarHeight - 16),
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: CircleAvatar(
                  backgroundColor: Palette.sunset,
                  radius: 30,
                  backgroundImage:
                      Image.asset('assets/pmatatias.png', fit: BoxFit.cover)
                          .image),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Container(
                // color: Colors.blue,
                margin: const EdgeInsets.only(top: 16),
                child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Matatias Situmorang (pmatatias)",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      // Divider(),
                      SizedBox(height: 8),
                      Text(
                        "Flutter developer | Blogger | Open-source \nenthusiast",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
              ),
            )
          ]),
          const SizedBox(height: 6),
          const Divider(color: Colors.white, height: 16),
          const Text("Lorem:", style: kTxtSubtitleSM),
          const SizedBox(height: 4),
          const Text(
            klongLorem,
            style: kTxtWhiteSemi,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          const Divider(color: Colors.white, height: 16),
          const Text("Ipsum:", style: kTxtSubtitleSM),
          const SizedBox(height: 4),
          const IconTxtRow(
              iconData: Icons.location_city, name: "Lorem Ipsum Dolor, PT."),
          const IconTxtRow(iconData: Icons.phone, name: "0xx-xxx"),
          const IconTxtRow(iconData: Icons.mail, name: "loremipsum@mail.com"),
          // const SizedBox(height: 8),
          const Divider(color: Colors.white, height: 16),
          const Text("Rank:", style: kTxtSubtitleSM),
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 3.0),
              child: Text("101", style: kTxtWhiteSemi)),
          const SizedBox(height: 4)
        ],
      ),
    );
  }
}
