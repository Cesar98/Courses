import 'package:flutter/material.dart';
import 'package:news_app/src/models/news_models.dart';
import 'package:http/http.dart' as http;

final _url_News = 'https://newsapi.org/v2';
final _api_Key = '449c205627db4060bc7eba9167797d11';

class NewsService extends ChangeNotifier {
  List<Article> headlines = [];

  NewsService() {
    getTopHeadlines();
  }

  getTopHeadlines() async {
    final url = '$_url_News/top-headlines?apiKey=$_api_Key&country=mx';

    final response = await http.get(Uri.parse(url));

    final newsResponse = newsResponseFromJson(response.body);

    headlines.addAll(newsResponse.articles);
    notifyListeners();
  }
}
