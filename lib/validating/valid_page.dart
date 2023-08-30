import 'package:flutter/material.dart';

class ValidatingPage extends StatefulWidget {
  const ValidatingPage({super.key});

  @override
  State<ValidatingPage> createState() => _ValidatingPageState();
}

class _ValidatingPageState extends State<ValidatingPage> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Validate Everything"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.check),
              label: const Text("Validate"))
        ],
      ),
      body: Form(
        key: _key,
        child: const Column(),
      ),
    );
  }
}
