import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage(tep: 0));
  }
}

class MyHomePage extends StatelessWidget {
  final int tep;
  const MyHomePage({super.key, required this.tep});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) => MyHomePage(
                        tep: tep + 1,
                      )),
            ),
            child: CircularPercentIndicator(
              radius: 83,
              percent: 0.83,
              animation: true,
              animationDuration: const Duration(seconds: 3).inMilliseconds,
            ),
          ),
          const Divider(),
          Text('tep: $tep'),
          const Divider(),
          SizedBox(
            height: 120,
            width: 120,
            child: AnimatedContainer(
              duration: const Duration(seconds: 3),
              curve: Curves.easeInOut,
              child: const CircularProgressIndicator(
                value: 0.8,
              ),
            ),
          )
        ],
      ),
    ));
  }
}
