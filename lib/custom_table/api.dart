import 'package:ck_linecode/custom_table/product_model.dart';
import 'package:http/http.dart' as http;

Future<ProductModel> fetchData() async {
  try {
    final resp = await http.get(Uri.parse("https://dummyjson.com/products"));
    return ProductModel.fromRawJson(resp.body);
  } catch (e) {
    rethrow;
  }
}
