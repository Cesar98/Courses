import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:movies/widgets/widgets.dart';
import 'package:movies/providers/movies_provider.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

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
            CardSwiper(movies: moviesProvider.onDisplayMovies),
            Divider(),
            // Horizontal movies list
            MovieSlider(
              movies: moviesProvider.popularMovies, 
              title: 'Top',
              onNextPage: () => moviesProvider.getPopularMovies(),),
            Divider(),

            MovieSlider(
              movies: moviesProvider.upcomingMovies,
              title: 'Upcoming',
              onNextPage: () => moviesProvider.getUpcomingMovies(),),
      
          ],
        ),
      )
    );
  }
}
