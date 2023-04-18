import 'package:ck_linecode/reactjs_card/card.dart';
import 'package:ck_linecode/reactjs_card/responsive.dart';
import 'package:flutter/material.dart';

final List<Widget> widge = [
  CardWidget(
    childBtn: TextButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.share),
      label: const Text("Share the love ASAP"),
    ),
    desc: "1000%",
    gradientColor: const [
      Color(0xFFF50057),
      Color(0xFFFF8A80),
    ],
    icon: Icons.favorite,
    name: "Love received",
  ),
  CardWidget(
      childBtn: TextButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.warning),
        label: const Text("Get more space"),
      ),
      desc: "99/100 GB",
      gradientColor: const [
        Color(0xFF5E35B1),
        Color(0xFF039BE5),
      ],
      icon: Icons.storage,
      name: "Used space"),
  CardWidget(
      childBtn: TextButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.local_drink),
        label: const Text("Drink some Cola"),
      ),
      desc: "10 pcs",
      gradientColor: const [
        Color(0xFF43A047),
        Color(0xFFFFEB3B),
      ],
      icon: Icons.local_pizza,
      name: "Pizza Eaten"),
  CardWidget(
      childBtn: TextButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.access_time_filled_sharp),
        label: const Text("Time is time"),
      ),
      desc: "20 mins",
      gradientColor: const [Color(0xFFEF6C00), Color(0xFFffa726)],
      icon: Icons.self_improvement,
      name: "Self improvement"),
];

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Flutter dashboad card widget",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
      ),
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: GridView.count(
          crossAxisSpacing: 20,
          // mainAxisSpacing: 20,
          childAspectRatio: size.width /
              size.height /
              context.responsive(0.29,
                  md: 0.6, lg: 0.59, xl: 1.2), // makin kecil makin pendek
          crossAxisCount: context.responsive(1, md: 2, lg: 2, xl: 4),
          children: widge,
        ),
      ),
    );
  }
}
