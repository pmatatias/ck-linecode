import 'package:flutter/material.dart';

class PreScreen extends StatefulWidget {
  const PreScreen({super.key});

  @override
  State<PreScreen> createState() => _PreScreenState();
}

class _PreScreenState extends State<PreScreen> {
  final _ctrl = TextEditingController();
  bool visible = false;
  Function()? at;
  @override
  void initState() {
    super.initState();
    at?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("June Notes")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            const TextField(
              decoration: InputDecoration(
                  isDense: true,
                  hintText: "Email",
                  border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  isDense: true,
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                      constraints: const BoxConstraints(),
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(Icons.visibility))),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    color: Colors.amber,
                    child: IconButton(
                      icon: const Icon(Icons.person_add_alt_1),
                      onPressed: () {},
                    )),
                Container(
                    color: Colors.amber,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.person_add_alt_1),
                      onPressed: () {},
                    )),
                Container(
                    color: Colors.amber,
                    child: IconButton(
                      constraints: const BoxConstraints(),
                      icon: const Icon(Icons.person_add_alt_1),
                      onPressed: () {},
                    )),
                Container(
                    color: Colors.amber,
                    child: IconButton(
                      constraints: const BoxConstraints(),
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.person_add_alt_1),
                      onPressed: () {},
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

String testSwitchStatementMethod(int value) {
  switch (value) {
    case 1:
      return "one";
    default:
      return "";
  }
}
String testSwitchExpressionmethod(int value) {
  final res = switch (value) {
    1 => "one",
    _ => '',
  };
  return res;
}

/// This is `Tempo`
///
/// and its a `abstract class`
abstract class Tempo {
  /// This is asycn function
  ///
  /// Call to get data from the database
  /// result: will be a `String`
  /// ```
  /// final result = 'abc'
  /// ```
  // 2 slashes will not be displayed as a description
  static Future<String> fetchData() async => '';
}
