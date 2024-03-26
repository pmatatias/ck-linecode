import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AlteringApp extends StatefulWidget {
  const AlteringApp({super.key});

  @override
  State<AlteringApp> createState() => _AlteringAppState();
}

class _AlteringAppState extends State<AlteringApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                changeIcon('alias1');
              },
              child: const Text("Alias 1"),
            ),
            ElevatedButton(
              onPressed: () {
                changeIcon('alias2');
              },
              child: const Text("Alias 2"),
            ),
            ElevatedButton(
              onPressed: () {
                changeIcon('MainActivity');
              },
              child: const Text("Back to main"),
            ),
          ],
        ),
      ),
    );
  }
}

void changeIcon(String aliasName) {
  const platform = MethodChannel('com.example.ck_linecode/changeIcon');
  platform.invokeMethod('changeIcon', {'aliasName': aliasName});
}
