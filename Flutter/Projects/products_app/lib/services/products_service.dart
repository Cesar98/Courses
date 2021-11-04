import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:products_app/models/models.dart';

class ProductsService extends ChangeNotifier {

  final String _baseUrl = 'flutter-projects-e07d5-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  bool isLoading = true;

  ProductsService(){
    this.loadProducts();
  }

  Future<List<Product>> loadProducts() async {

    this.isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'products.json');
    final response = await http.get(url);
    final Map<String, dynamic> productsMap = json.decode(response.body);

    productsMap.forEach((key, value) {
      
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      this.products.add(tempProduct);

    });

    this.isLoading = false;
    notifyListeners();

    return this.products;
  }

}