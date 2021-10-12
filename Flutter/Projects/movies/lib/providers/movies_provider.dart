import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

import 'package:movies/models/models.dart';
import 'package:movies/models/upcoming_response.dart';

class MoviesProvider extends ChangeNotifier {
  String _urlBase = 'api.themoviedb.org';
  String _apiKey = '4122faece4cd76ab9d8e1dd026c1f411';
  String _lenguage = 'en-US';

  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  List<Movie> upcomingMovies = [];

  int _popularPage = 0;
  int _upcomingPage = 0;

  MoviesProvider() {
    this.getOnDisplayMovies();
    this.getPopularMovies();
    this.getUpcomingMovies();
  }

  Future<String> _getJsonData(String endpoint, [int pages = 1]) async {
    var url = Uri.https(_urlBase, endpoint,
        {'api_key': _apiKey, 'language': _lenguage, 'page': pages.toString()});

    final response = await http.get(url);
    return response.body;
  }

  getOnDisplayMovies() async {
    final decodedData = await _getJsonData('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson(decodedData);

    onDisplayMovies = nowPlayingResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage++;
    final decodedData = await _getJsonData('3/movie/popular', _popularPage);
    final popularResponse = PopularResponse.fromJson(decodedData);

    popularMovies = [ ...popularMovies, ...popularResponse.results ];
    notifyListeners();
  }

  getUpcomingMovies() async {
    _upcomingPage++;
    final decodedData = await _getJsonData('3/movie/upcoming', _upcomingPage);
    final upcomingResponse = UpcomingResponse.fromJson(decodedData);

    upcomingMovies = [ ...upcomingMovies, ...upcomingResponse.results ];
    notifyListeners();
  }
}
