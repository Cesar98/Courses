import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';
import 'package:movies/models/models.dart';

class CardSwiper extends StatelessWidget {
  final List<Movie> movies;

  const CardSwiper({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (movies.length == 0) {
      return Container(
          width: double.infinity,
          height: size.height * 0.50,
          child: Center(child: CircularProgressIndicator()));
    }

    return Container(
      width: double.infinity,
      height: size.height * 0.50,
      child: Swiper(
        itemCount: movies.length,
        layout: SwiperLayout.TINDER,
        itemHeight: size.height * 0.60,
        itemWidth: size.width * 0.70,
        itemBuilder: (_, index) {
          final movie = movies[index];

          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details',
                arguments: movie),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage(movie.fullPosterImg),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
