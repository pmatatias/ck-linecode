import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardView(),
    );
  }
}

/// extension method responsive
extension Responsive on BuildContext {
  T responsive<T>(
    T defaultVal, {
    T? sm,
    T? md,
    T? lg,
    T? xl,
  }) {
    final wd = MediaQuery.of(this).size.width;
    return wd >= 1280
        ? (xl ?? lg ?? md ?? sm ?? defaultVal)
        : wd >= 1024
            ? (lg ?? md ?? sm ?? defaultVal)
            : wd >= 768
                ? (md ?? sm ?? defaultVal)
                : wd >= 640
                    ? (sm ?? defaultVal)
                    : defaultVal;
  }
}

/// List data
final List<Widget> widge = [
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
      name: "Pizza Eaten")
];

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text(
          "Flutter dashboad card widget",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ).addNeumorphism(),
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
        context.responsive(0.3,
            md: 0.6,
            lg: 0.59,
            xl: 1.2), 
    crossAxisCount: context.responsive(1, md: 2, xl: 4),
    children: widge,
  ),
),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.gradientColor,
      this.icon = Icons.abc,
      required this.childBtn,
      this.desc = "",
      this.name = ""});

  final String name;
  final String desc;
  final Widget childBtn;
  final IconData icon;
  final List<Color> gradientColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 8,
            color: Colors.black38,
          ),
          BoxShadow(
            offset: Offset(-1, -1),
            blurRadius: 10,
            color: Colors.white,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black38),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: 90,
                  height: 90,
                  transform: Matrix4.translationValues(8, -27, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(3, 3),
                          blurRadius: 8,
                          color: gradientColor[0],
                        ),
                        const BoxShadow(
                          offset: Offset(-1, -1),
                          blurRadius: 10,
                          color: Colors.white,
                        ),
                      ],
                      gradient: LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: gradientColor)),
                  child: Icon(icon, size: 60, color: Colors.white)),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    name,
                    style: const TextStyle(fontSize: 20),
                    textAlign: TextAlign.right,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12, top: 4),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                desc,
                textAlign: TextAlign.right,
                style: const TextStyle(fontSize: 28),
              ),
            ),
          ),
          const Divider(thickness: 1.4),
          Align(alignment: Alignment.centerLeft, child: childBtn),
        ]),
      ),
    );
  }
}

extension Neumorphism on Widget {
  addNeumorphism({
    double borderRadius = 10.0,
    Offset offset = const Offset(5, 5),
    double blurRadius = 10,
    Color topShadowColor = Colors.white60,
    Color bottomShadowColor = const Color(0x26234395),
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dx),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}
