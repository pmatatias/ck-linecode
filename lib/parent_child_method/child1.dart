import 'package:ck_linecode/parent_child_method/parent_widget.dart';
import 'package:flutter/material.dart';

class Child1 extends StatefulWidget {
  const Child1({super.key, required this.builder, this.methodFromParent});
  final CustomBuilder builder;
  final Function(List<String> val)? methodFromParent;

  @override
  State<Child1> createState() => _Child1State();
}

class _Child1State extends State<Child1> {
  String childTxt = "";
  final _ctlr = TextEditingController();
  final _ctlr2 = TextEditingController();
  final _ctlr3 = TextEditingController();

  void _localMethod() {
    print("invoke method in Child 1");
    final collectedString = [_ctlr.text, _ctlr2.text, _ctlr3.text];
    widget.methodFromParent?.call(collectedString);
  }

  @override
  Widget build(BuildContext context) {
    print("child 1 rebuild.......");
    widget.builder.call(context, _localMethod);
    return Material(
        elevation: 5,
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text("Child widget 1", style: TextStyle(fontSize: 30)),
              const SizedBox(height: 60),
              TextField(
                controller: _ctlr,
                decoration: const InputDecoration(
                    isCollapsed: true,
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _ctlr2,
                decoration: const InputDecoration(
                    isCollapsed: true,
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _ctlr3,
                decoration: const InputDecoration(
                    isCollapsed: true,
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    border: OutlineInputBorder()),
              ),
            ],
          ),
        ));
  }
}
