import 'package:flutter/material.dart';

class Child2 extends StatefulWidget {
  const Child2({super.key, this.methodFromParent});
  final Function(String val)? methodFromParent;

  @override
  State<Child2> createState() => _Child2State();
}

class _Child2State extends State<Child2> {
  String child2Txt = "-";

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Child widget 2", style: TextStyle(fontSize: 30)),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () async {
                    final dialgo = await showDialog<String?>(
                        context: context,
                        builder: (context) {
                          String dialgTxt = "";
                          return AlertDialog(
                            title: const Text("Update value from this dialog?"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                TextField(
                                  onChanged: (val) {
                                    dialgTxt = val;
                                  },
                                  decoration: const InputDecoration(
                                      isCollapsed: true,
                                      fillColor: Colors.white,
                                      filled: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 20),
                                      border: OutlineInputBorder()),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Cancel")),
                              TextButton(
                                  onPressed: () {
                                    widget.methodFromParent?.call(dialgTxt);
                                    Navigator.pop(context, dialgTxt);
                                  },
                                  child: const Text("Update")),
                            ],
                          );
                        });
                    if (dialgo != null) {
                      child2Txt = dialgo;

                      setState(() {});
                    }
                  },
                  child: const Text("show dialog")),
                const SizedBox(height: 50),

              Center(child: Text("Text from dialog: $child2Txt")),
            ],
          ),
        ));
  }
}
