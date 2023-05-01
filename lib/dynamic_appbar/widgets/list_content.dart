import 'package:ck_linecode/dynamic_appbar/widgets/card1.dart';
import 'package:ck_linecode/dynamic_appbar/widgets/card2.dart';
import 'package:ck_linecode/dynamic_appbar/widgets/sample_flchart.dart';
import 'package:flutter/material.dart';

import '../palette.dart';

class ContentListView extends StatelessWidget {
  const ContentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      decoration: const BoxDecoration(
          color: Palette.myrtleGreen,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: ListView(
        children:  [
           Container(
            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: const BarChartSample2(),
          ),
          const Card1(icon: Icons.task, title: "Tasks", count: 12),
          const Card1(icon: Icons.crisis_alert_sharp, title: "Alert", count: 1),
             const Card2(
            amount: 9313.342,
            count: 31,
            icon: Icons.add_chart_sharp,
            title: "Shop ",
          ),
         
          const Card2(
            amount: 123.00,
            count: 3,
            icon: Icons.travel_explore_sharp,
            title: "Travel ",
          ),
          const Card2(
            amount: 1000.921,
            count: 11,
            icon: Icons.workspace_premium_sharp,
            title: "Workspace",
          ),
        ],
      ),
    );
  }
}
