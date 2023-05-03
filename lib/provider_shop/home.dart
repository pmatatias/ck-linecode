import 'package:ck_linecode/provider_shop/pstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'appstate.dart';
import 'catalog_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    final ps = context.read<PState>();
                    ps.nu = "qqqqq";
                  },
                  child: const Text("update")),
              ElevatedButton(
                  onPressed: () {
                    // final ps = context.read<PState>();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ChangeNotifierProxyProvider<PState, AppState>(
                            update: (context, value, previous) {
                              if (previous == null) {
                                throw ArgumentError.notNull('previose');
                              }
                              previous.pState = value;
                              return previous;
                            },
                            create: (context) => AppState(),
                            builder: (context, child) => const CatalogScreen(),
                          ),
                        ));
                  },
                  child: const Text("Catalog screen")),
              ElevatedButton(
                  onPressed: () {
                    final ps = context.read<PState>();

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeNotifierProvider(
                            create: (context) =>
                                AppState()..initData(data: ps.nu),
                            builder: (context, child) => const CatalogScreen(),
                          ),
                        ));
                  },
                  child: const Text("Microtask screen")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeNotifierProvider(
                            create: (context) => AppState(),
                            builder: (context, child) => const CatalogScreen(),
                          ),
                        ));
                  },
                  child: const Text("widget binding screen")),
            ]),
      ),
    );
  }
}
