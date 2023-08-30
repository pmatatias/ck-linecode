import 'package:ck_linecode/custom_table/api.dart';
import 'package:ck_linecode/custom_table/product_model.dart';
import 'package:flutter/material.dart';

class TableView extends StatefulWidget {
  const TableView({super.key});

  @override
  State<TableView> createState() => _TableViewState();
}

class _TableViewState extends State<TableView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Table")),
      body: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  snapshot.error.toString(),
                  style: const TextStyle(color: Colors.red),
                ),
              );
            } else if (snapshot.hasData) {
              return const BuildTable();
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}

class BuildTable extends StatelessWidget {
  const BuildTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}

class RowTable extends StatelessWidget {
  const RowTable({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
