import 'package:ck_linecode/provider_shop/pstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'medium_notification/notif_list_screen.dart';

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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const NotifScreen(),
      ),
    );
  }
}
