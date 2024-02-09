import 'package:ck_linecode/dart_extension_7/dart_extension7.dart';
import 'package:ck_linecode/dart_extension_7/rowcost.dart';
import 'package:flutter/material.dart';

class ExtDartsample extends StatefulWidget {
  const ExtDartsample({super.key});

  @override
  State<ExtDartsample> createState() => _ExtDartsampleState();
}

class _ExtDartsampleState extends State<ExtDartsample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dart Extension 7")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          RowCost(param: "Cost of goods", value: 124.53420.removeTrailingZeros),
          RowCost(param: "Cost of goods", value: 124.5.removeTrailingZeros),
          RowCost(param: "Cost of goods", value: 124.5.removeTrailingZeros),
          RowCost(param: "Cost of goods", value: 124.5.removeTrailingZeros),
        ]),
      ),
    );
  }
}
