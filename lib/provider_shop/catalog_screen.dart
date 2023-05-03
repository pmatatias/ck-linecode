import 'package:ck_linecode/provider_shop/appstate.dart';
import 'package:ck_linecode/provider_shop/pstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      body: Column(
        children: [
             ElevatedButton(
                  onPressed: () {
                    final ps = context.read<PState>();
                    ps.nu = "qweqw";

                    // print(ps.nu);
                    setState(() {
                      
                    });
                  },
                  child: const Text("update")),
          Center(child: Consumer<AppState>(builder: (context, value, child) {
            if (value.isLoading) return const CircularProgressIndicator();
            return Text(value.gettxt);
          })),
        ],
      ),
    );
  }
}
