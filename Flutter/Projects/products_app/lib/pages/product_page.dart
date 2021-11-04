import 'package:flutter/material.dart';
import 'package:products_app/ui/input_decorations.dart';
import 'package:products_app/widgets/widgets.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Column(
            children: [
              Stack(
                children: [
                  Hero(child: ProductImage(), tag:1),
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
        onPressed: () {},
      ),
    );
  }
}

class _ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: _contentDecoration(),
      child: Form(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          TextFormField(
              autocorrect: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                  'Product name', 'Product', Icons.local_grocery_store),
              onChanged: (value) {},
              validator: (value) {}),
          SizedBox(
            height: 20,
          ),
          TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.number,
              decoration: InputDecorations.authInputDecoration(
                  '\$120.10', 'Price', Icons.attach_money_rounded),
              onChanged: (value) {},
              validator: (value) {}),
          SizedBox(
            height: 20,
          ),
          SwitchListTile.adaptive(
              title: Text(
                'Available',
                style: TextStyle(color: Colors.purple),
              ),
              secondary: Icon(Icons.add_business_rounded, color: Colors.purple,),
              value: true,
              activeColor: Colors.deepPurple,
              activeTrackColor: Colors.purple,
              onChanged: (value) {}),
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
