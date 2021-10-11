import 'package:flutter/material.dart';

import 'package:movies/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies on theater'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            tooltip: 'Search movie',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Card swiper movies
            CardSwiper(),
            // Horizontal movies list
            MovieSlider(),
      
          ],
        ),
      )
    );
  }
}
