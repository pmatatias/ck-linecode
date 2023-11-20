import 'package:ck_linecode/spinkitclone/threebounce.dart';
import 'package:ck_linecode/spinkitclone/threeinout.dart';
import 'package:flutter/material.dart';

class Spinkitclone extends StatelessWidget {
  const Spinkitclone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const SpinKitThreeBounce(color: Colors.amber),
          SpinKitThreeInOut(
            // color: Colors.green,
            
            itemBuilder: (context, index) => Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
