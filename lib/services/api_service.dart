import 'dart:convert';

import 'package:e_commerce_task/contants/global.dart';
import 'package:e_commerce_task/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['products'];
      return data.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
