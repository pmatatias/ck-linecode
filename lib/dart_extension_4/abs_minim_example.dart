import 'package:flutter/material.dart';
import 'package:ck_linecode/dart_extension_4/abs_pos_extension.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _containerKey = GlobalKey();

@override
  void didChangeDependencies() {
    setState(() {
      
    });
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("..")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              key: _containerKey,
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Text('${_containerKey.globalPaintBounds?.topLeft.toString()}'),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("sadas"))
          ],
        ),
      ),
    );
  }
}
