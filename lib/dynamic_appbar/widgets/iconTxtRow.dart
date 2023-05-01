import 'package:ck_linecode/dynamic_appbar/constanta.dart';
import 'package:flutter/material.dart';

class IconTxtRow extends StatelessWidget {
  const IconTxtRow({super.key, required this.iconData, required this.name});

  final IconData iconData;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Row(
        children: [
          Icon(iconData, color: Colors.white, size: 20),
          const SizedBox(width: 12),
          Text(name, style: kTxtWhiteSemi)
        ],
      ),
    );
  }
}
