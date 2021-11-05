import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:products_app/models/models.dart';

class ProductsService extends ChangeNotifier {
  final String _baseUrl = 'flutter-projects-e07d5-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  bool isLoading = true;
  bool isSaving = false;
  Product? selectedProduct;

  ProductsService() {
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

  Future saveProduct(Product product) async {
    isSaving = true;
    notifyListeners();

    if (product.id == null) {
      await this.createProduct(product);
    } else {
      await this.updateProduct(product);
    }

    isSaving = false;
    notifyListeners();
  }

  Future<String> updateProduct(Product product) async {
    final url = Uri.https(_baseUrl, 'products/${product.id}.json');
    final response = await http.put(url, body: product.toJson());
    final decodedData = response.body;

    products[products.indexWhere((element) => element.id == product.id)] =
        product;

    return product.id!;
  }

  Future<String> createProduct(Product product) async {
    final url = Uri.https(_baseUrl, 'products.json');
    final response = await http.post(url, body: product.toJson());
    final decodedData = json.decode(response.body);
    product.id = decodedData['name'];
    products.add(product);

    return product.id!;
  }
}
