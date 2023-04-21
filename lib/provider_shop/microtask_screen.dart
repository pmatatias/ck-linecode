import 'package:ck_linecode/provider_shop/appstate.dart';
import 'package:ck_linecode/provider_shop/pstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MicrotaskScreen extends StatefulWidget {
  const MicrotaskScreen({super.key});

  @override
  State<MicrotaskScreen> createState() => _MicrotaskScreenState();
}

class _MicrotaskScreenState extends State<MicrotaskScreen> {
  @override
  void initState() {
    super.initState();


    Future.microtask(() {
      context.read<AppState>().initData();
      setState(() {});
      print("done");
    });
  }

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
                    ps.nu = "qqqqq";
                    setState(() {
                      
                    });
                  },
                  child: const Text("update")),
          Center(child: Consumer<AppState>(builder: (context, value, child) {
            if (value.isLoading) return const CircularProgressIndicator();
            return Text(value.txt);
          })),
        ],
      ),
    );
  }
}
