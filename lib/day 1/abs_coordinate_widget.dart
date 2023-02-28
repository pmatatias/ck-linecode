import 'package:flutter/material.dart';

class DartExtension4 extends StatefulWidget {
  const DartExtension4({
    super.key,
  });

  @override
  State<DartExtension4> createState() => _DartExtension4State();
}

class _DartExtension4State extends State<DartExtension4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dart Extension 4"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[],
        ),
      ),
    );
  }
}
