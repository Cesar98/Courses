import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        width: double.infinity,
        height: size.height * .50,
        decoration: _imageBoxDecoration(),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://via.placeholder.com/400x300/green'),
            fit: BoxFit.cover,
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
