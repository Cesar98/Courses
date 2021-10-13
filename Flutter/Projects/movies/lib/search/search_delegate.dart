import 'package:flutter/material.dart';
import 'package:movies/models/movie.dart';

import 'package:provider/provider.dart';

import 'package:movies/providers/movies_provider.dart';

class MovieSearchDelegate extends SearchDelegate {
  @override
  String? get searchFieldLabel => 'Search movie';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: Icon(Icons.arrow_back_rounded));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) return _emptySearch();

    final moviesProvider = Provider.of<MoviesProvider>(context, listen: false);

    return FutureBuilder(
      future: moviesProvider.searchMovies(query),
      builder: (_, AsyncSnapshot<List<Movie>> snapshot) {
        if (!snapshot.hasData) return _emptySearch();

        final movies = snapshot.data;

        return ListView.builder(
          itemCount: movies!.length,
          itemBuilder: (_, int index) => _CreateSearchResponse(movies[index]),
        );
      },
    );
  }

  Widget _emptySearch() {
    return Container(
        child: Center(
      child: Icon(
        Icons.movie_creation_outlined,
        color: Colors.white30,
        size: 150,
      ),
    ));
  }
}

class _CreateSearchResponse extends StatelessWidget {
  final Movie movie;

  const _CreateSearchResponse(this.movie);

  @override
  Widget build(BuildContext context) {

    movie.heroId = 'searching-${movie.heroId}';

    return ListTile(
      leading: FadeInImage(
          placeholder: AssetImage('assets/no-image.jpg'),
          image: NetworkImage(movie.fullPosterImg), width: 100, fit: BoxFit.cover
      ),
      title: Text(movie.title),
      subtitle: Text(movie.originalTitle),
      onTap: () => Navigator.pushNamed(context, 'details', arguments: movie) ,
    );
  }
}
