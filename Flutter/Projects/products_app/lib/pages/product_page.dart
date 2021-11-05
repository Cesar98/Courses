import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:products_app/providers/product_form_provider.dart';
import 'package:products_app/ui/input_decorations.dart';
import 'package:provider/provider.dart';

import 'package:products_app/widgets/widgets.dart';
import 'package:products_app/services/services.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsService = Provider.of<ProductsService>(context);
    final size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
        create: (_) => ProductFormProvider(productsService.selectedProduct!),
        child: _ProductsPageBody(productsService: productsService, size: size));
  }
}

class _ProductsPageBody extends StatelessWidget {
  const _ProductsPageBody({
    Key? key,
    required this.productsService,
    required this.size,
  }) : super(key: key);

  final ProductsService productsService;
  final Size size;

  @override
  Widget build(BuildContext context) {

    final productForm = Provider.of<ProductFormProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Hero(
                      child: ProductImage(
                        productImage: productsService.selectedProduct!.picture,
                      ),
                      tag: productsService.selectedProduct!.name),
                  Positioned(
                    child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () => Navigator.pop(context)),
                    top: size.height * .10,
                    left: size.width * .05,
                  ),
                  Positioned(
                    child: IconButton(
                      icon: Icon(Icons.camera_alt_rounded),
                      color: Colors.white,
                      iconSize: 30,
                      onPressed: () {},
                    ),
                    top: size.height * .10,
                    right: size.width * .05,
                  ),
                ],
              ),
              _ProductForm(),
              SizedBox(
                height: size.height * .20,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () async {
          if(!productForm.isValidForm()) return;

          await productsService.saveProduct(productForm.product);
        },
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productForm = Provider.of<ProductFormProvider>(context);
    final product = productForm.product;

    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: _contentDecoration(),
      child: Form(
        key: productForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
              initialValue: product.name,
              autocorrect: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  'Product name', 'Product', Icons.local_grocery_store),
              onChanged: (value) {
                product.name = value;
              },
              validator: (value) {
                if (value!.length < 1) return 'Product name is necessary';
              }),
          SizedBox(
            height: 20,
          ),
          TextFormField(
              initialValue: product.price.toString(),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
              ],
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: InputDecorations.authInputDecoration(
                  '\$120.10', 'Price', Icons.attach_money_rounded),
              onChanged: (value) {
                if (double.tryParse(value) == null) {
                  product.price = 0;
                } else {
                  product.price = double.parse(value);
                }
              }),
          SizedBox(
            height: 20,
          ),
          SwitchListTile.adaptive(
              title: Text(
                'Available',
                style: TextStyle(color: Colors.purple),
              ),
              secondary: Icon(
                Icons.add_business_rounded,
                color: Colors.purple,
              ),
              value: product.available,
              activeColor: Colors.deepPurple,
              activeTrackColor: Colors.purple,
              onChanged: productForm.updateAvailability),
          SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }

  BoxDecoration _contentDecoration() {
    return BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 20, offset: Offset(0, 10))
        ],
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)));
  }
}
