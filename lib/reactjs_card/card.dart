import 'package:flutter/material.dart';

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
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            color: Colors.cyanAccent,
            child: Row(
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
          Container(
            color: Colors.brown,
            child: Align(alignment: Alignment.centerLeft, child: childBtn),
          ),
        ]),
      ),
    );
  }
}
