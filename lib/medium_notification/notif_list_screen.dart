import 'package:flutter/material.dart';

class NotifScreen extends StatelessWidget {
  const NotifScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Activity"),

      ),
      body: Container(),
    );
  }
}


// icon circle
class MyIconType extends StatelessWidget {
  const MyIconType({super.key, required this.bgColor,required this.iconData});
  final IconData iconData;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}