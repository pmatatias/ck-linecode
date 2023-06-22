import 'package:flutter/material.dart';

import 'cpi_manual.dart';

class CPImodif extends StatefulWidget {
  const CPImodif({super.key});

  @override
  State<CPImodif> createState() => _CPImodifState();
}

class _CPImodifState extends State<CPImodif> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator.adaptive(
              backgroundColor: Colors.white,
              strokeWidth: 5,
            ),
            Divider(),
            CircularProgressIndicator(),
            Divider(),
            CustomProgressIndicator(),
            Divider(),
          ],
        ),
      ),
    );
  }
}
