import 'package:ck_linecode/custom_table/my_table.dart';
import 'package:ck_linecode/custom_table/product_model.dart';
import 'package:ck_linecode/custom_table/search_container.dart';
import 'package:flutter/material.dart';

class FutureBuilderExploSCreen extends StatefulWidget {
  const FutureBuilderExploSCreen({super.key});

  @override
  State<FutureBuilderExploSCreen> createState() =>
      _FutureBuilderExploSCreenState();
}

class _FutureBuilderExploSCreenState extends State<FutureBuilderExploSCreen> {
  final getListProduct = fetchData();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(6, 12, 6, 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "⦿  Table Products",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Expanded(child: SearchInputContainer()),
                ],
              ),
              const SizedBox(height: 8),
              const TitleTable(),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    setState(() {});
                  },
                  child: FutureBuilder(
                      future: getListProduct,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(
                              snapshot.error.toString(),
                              style: const TextStyle(color: Colors.red),
                            ),
                          );
                        } else if (snapshot.hasData) {
                          final data = snapshot.data!;
                          if (data.products.isEmpty) {
                            return const Center(child: Text("No Item Found!"));
                          }
                          return ListView.builder(
                            itemCount: data.products.length,
                            itemBuilder: (context, index) => RowTable(
                              product: data.products[index],
                              idx: index,
                            ),
                          );
                        }
                        return const SizedBox();
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
