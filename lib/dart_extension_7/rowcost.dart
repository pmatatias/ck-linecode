import 'package:ck_linecode/dart_extension_7/dash_separator.dart';
import 'package:flutter/material.dart';

class RowCost extends StatelessWidget {
  const RowCost(
      {Key? key, required this.param, this.style, required this.value})
      : super(key: key);
  final String param;
  final dynamic value;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        children: [
          Text(param, style: style, textScaleFactor: 0.92),
          const Expanded(child: MySeparator(padVal: 16)),
          Text(value, textScaleFactor: 1.02, style: style)
        ],
      ),
    );
  }
}
