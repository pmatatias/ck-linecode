import 'package:ck_linecode/parent_child_method/child1.dart';
import 'package:ck_linecode/parent_child_method/child2.dart';
import 'package:flutter/material.dart';

typedef CustomBuilder = void Function(
    BuildContext context, void Function() childMethod);

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  String child2Text = "";
  List<String> listChild1 = [];

  late void Function() method1;

  void updtFromChild2(String par) {
    child2Text = par;
    setState(() {});
  }

  void collectValueFromChild1(List<String> listVal) {
    listChild1 = listVal;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive View"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                    child: Text("Parent", style: TextStyle(fontSize: 30))),
                const SizedBox(height: 50),
                const Divider(),
                const Text(
                    'for example: before saving data, collet all updated value from the children'),
                const SizedBox(height: 12),
                ElevatedButton(
                    onPressed: () {
                      method1.call();
                    },
                    child: const Text("Collect value from child 1")),
                const SizedBox(height: 12),
                const Text("List of string from child 1:"),
                ...listChild1
                    .map((e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("- $e"),
                        ))
                    .toList(),
                const Divider(),
                const SizedBox(height: 50),
                Text("Text from Child 2: $child2Text"),
                const Divider(),
              ],
            ),
          ),
          Expanded(
              child: Child1(
            methodFromParent: collectValueFromChild1,
            builder: (context, childMethod) => method1 = childMethod,
          )),
          Expanded(child: Child2(methodFromParent: updtFromChild2)),
        ],
      ),
    );
  }
}
