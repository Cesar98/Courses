// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  /* const BasicDesignScreen({Key? key}) : super(key: key); */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: AssetImage('assets/bp_img.jpg'),
        ),
        SizedBox(
          height: 20,
        ),
        Title(),
        SizedBox(
          height: 20,
        ),
        IconButtons(),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              'Cillum tempor veniam quis irure reprehenderit officia ipsum magna proident ad Lorem. Nisi magna officia ea fugiat quis fugiat cupidatat elit exercitation aute irure consectetur laborum. Deserunt adipisicing deserunt qui voluptate veniam et labore esse quis magna voluptate qui do pariatur. Tempor ex elit occaecat pariatur culpa ut ipsum incididunt sint dolor elit voluptate.',),
        )
      ],
    ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Anyone calls me by my name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Anyone calls me by my name',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black45),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class IconButtons extends StatelessWidget {
  const IconButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(
              buttonIcon: Icon(
                Icons.call,
                color: Colors.blue,
              ),
              buttonTitle: 'CALL',
            ),
            CustomButton(
              buttonIcon: Icon(
                Icons.margin_sharp,
                color: Colors.blue,
              ),
              buttonTitle: 'ROUTE',
            ),
            CustomButton(
              buttonIcon: Icon(
                Icons.share,
                color: Colors.blue,
              ),
              buttonTitle: 'SHARE',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Icon buttonIcon;

  const CustomButton({
    Key? key,
    required this.buttonTitle,
    required this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: buttonIcon),
        Text(buttonTitle, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
