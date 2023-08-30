import 'package:ck_linecode/provider_shop/pstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PState(),
      builder: (context, child) => MaterialApp(
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        title: 'CK-Lines Code',
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: const MyHome(),
      ),
    );
  }
}
