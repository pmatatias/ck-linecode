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
            itemBuilder: (context, index) => RowTable(
              product: data.products[index],
              idx: index,
            ),
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
      color: Colors.blueGrey,
      child: Row(
        children: [
          SizedBox(width: 40, child: Celll(value: "No", isHeader: true)),
          Expanded(flex: 2, child: Celll(value: "Title", isHeader: true)),
          Expanded(flex: 2, child: Celll(value: "Category", isHeader: true)),
          Expanded(flex: 1, child: Celll(value: "Price", isHeader: true)),
          Expanded(flex: 1, child: Celll(value: "Rating", isHeader: true)),
          Expanded(flex: 1, child: Celll(value: "Stock", isHeader: true)),
          Expanded(
              flex: 5,
              child: Celll(
                  value: "Description", isHeader: true, showBorder: false)),
        ],
      ),
    );
  }
}

class RowTable extends StatelessWidget {
  const RowTable({super.key, required this.product, required this.idx});
  final Product product;
  final int idx;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          SizedBox(width: 40, child: Celll(value: idx + 1)),
          Expanded(flex: 2, child: Celll(value: product.title)),
          Expanded(flex: 2, child: Celll(value: product.category)),
          Expanded(flex: 1, child: Celll(value: '\$ ${product.price}')),
          Expanded(flex: 1, child: Celll(value: product.rating)),
          Expanded(flex: 1, child: Celll(value: product.stock)),
          Expanded(
              flex: 5,
              child: Celll(
                  value: product.description,
                  txtAlign: TextAlign.left,
                  showBorder: false)),
        ],
      ),
    );
  }
}

class Celll extends StatelessWidget {
  const Celll(
      {super.key,
      this.child,
      this.value,
      this.color = Colors.grey,
      this.padCon,
      this.isHeader = false,
      this.txtAlign = TextAlign.center,
      this.showBorder = true})
      : assert(
            !(child != null && value != null)); // throw if both param provided
  final Widget? child;
  final Color color;
  final dynamic value;
  final bool showBorder;
  final TextAlign txtAlign;
  final bool isHeader;
  final EdgeInsetsGeometry? padCon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          padCon ?? const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
      decoration: showBorder
          ? BoxDecoration(
              border: Border(right: BorderSide(color: color)),
            )
          : null,
      child: value != null
          ? Text('$value',
              textAlign: txtAlign,
              style: isHeader
                  ? const TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white)
                  : null)
          : child,
    );
  }
}
