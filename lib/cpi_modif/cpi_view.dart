
import 'package:flutter/material.dart';
/// create loading like gmail
class CPImodif extends StatefulWidget {
  const CPImodif({super.key});

  @override
  State<CPImodif> createState() => _CPImodifState();
}

class _CPImodifState extends State<CPImodif> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: Colors.white,
          strokeWidth: 5,
        ),
      ),
    );
  }
}
