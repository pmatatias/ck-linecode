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
              return BuildTable(data: snapshot.data!);
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}

class BuildTable extends StatelessWidget {
  const BuildTable({super.key, required this.data});
  final ProductModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Dummy data table"),
        const TitleTable(),
        Expanded(
          child: ListView.builder(
            itemCount: data.products.length,
            itemBuilder: (context, index) =>
                RowTable(product: data.products[index]),
          ),
        )
      ],
    );
  }
}

class TitleTable extends StatelessWidget {
  const TitleTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Row(
        children: [
          SizedBox(width: 20, child: Celll(child: Text("No"))),
          Expanded(flex: 3, child: Celll(child: Text("Title"))),
          Expanded(flex: 5, child: Celll(child: Text("Description"))),
          Expanded(flex: 1, child: Celll(child: Text("Price"))),
          Expanded(flex: 1, child: Celll(child: Text("Rating"))),
          Expanded(flex: 1, child: Celll(child: Text("Stock"))),
          Expanded(flex: 2, child: Celll(child: Text("Category"))),
          Expanded(flex: 3, child: Celll(child: Text("Thumbnail"))),
        ],
      ),
    );
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

class Celll extends StatelessWidget {
  const Celll(
      {super.key,
      required this.child,
      this.color = Colors.grey,
      this.padCon,
      this.showBorder = true});
  final Widget child;
  final Color color;
  final bool showBorder;
  final EdgeInsetsGeometry? padCon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padCon ?? const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      decoration: showBorder
          ? BoxDecoration(
              border: Border(right: BorderSide(color: color)),
            )
          : null,
      child: child,
    );
  }
}
