import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductImage extends StatelessWidget {
  final String? productImage;

  const ProductImage({this.productImage});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * .50,
        decoration: _imageBoxDecoration(),
        child: Opacity(
          opacity: 0.8,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            child: productImage == null
                ? Image(
                    image: AssetImage('assets/no-image.png'), fit: BoxFit.cover)
                : FadeInImage(
                    placeholder: AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(productImage!),
                    fit: BoxFit.cover,
                  ),
          ),
        ));
  }

  BoxDecoration _imageBoxDecoration() => BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.black, blurRadius: 20, offset: Offset(0, -5))
          ]);
}
