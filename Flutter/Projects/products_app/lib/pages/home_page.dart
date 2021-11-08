import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:products_app/services/services.dart';
import 'package:products_app/widgets/widgets.dart';
import 'package:products_app/pages/pages.dart';
import 'package:products_app/models/models.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);
    final authService = Provider.of<AuthService>(context, listen: false);

    if (productsService.isLoading) return LoadingPage();

    final products = productsService.products;

    return Scaffold(
      appBar: AppBar(title: Text('Products'), actions: [
        IconButton(
            onPressed: () {
              authService.logout();
              Navigator.pushReplacementNamed(context, 'login');
            },
            icon: Icon(Icons.logout_rounded))
      ]),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
              child: Hero(
                child: ProductCard(product: products[index]),
                tag: products[index].name,
              ),
              onTap: () {
                productsService.selectedProduct = products[index].copy();
                Navigator.pushNamed(context, 'product');
              });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart_sharp),
        onPressed: () {
          productsService.selectedProduct =
              new Product(available: true, name: '', price: 0.0);

          Navigator.pushNamed(context, 'product');
        },
      ),
    );
  }
}
