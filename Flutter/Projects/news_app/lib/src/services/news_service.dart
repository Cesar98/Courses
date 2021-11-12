import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/src/models/category_model.dart';
import 'package:news_app/src/models/news_models.dart';

final _url_News = 'https://newsapi.org/v2';
final _api_Key = '449c205627db4060bc7eba9167797d11';

class NewsService extends ChangeNotifier {
  List<Article> headlines = [];

  String _selectedCategory = 'business';

  List<Category> categories = [
    Category(FontAwesomeIcons.businessTime, 'business'),
    Category(FontAwesomeIcons.gamepad, 'entertainment'),
    Category(FontAwesomeIcons.users, 'general'),
    Category(FontAwesomeIcons.heart, 'health'),
    Category(FontAwesomeIcons.vials, 'science'),
    Category(FontAwesomeIcons.basketballBall, 'sports'),
    Category(FontAwesomeIcons.android, 'technology')
  ];

  Map<String, List<Article>> categoryArticles = {

  };

  NewsService() {
    getTopHeadlines();

    categories.forEach((element) {
      categoryArticles[element.name] = [];
    });
  }

  String get selectedCategory => _selectedCategory;

  set selectedCategory(String value) {
    _selectedCategory = value;
    getArticlesByCategory(value);
    notifyListeners();
  }

  List<Article> get getSelectedCategoryArticles => categoryArticles[selectedCategory]!;

  getTopHeadlines() async {
    final url = '$_url_News/top-headlines?apiKey=$_api_Key&country=mx';

    final response = await http.get(Uri.parse(url));

    final newsResponse = newsResponseFromJson(response.body);

    headlines.addAll(newsResponse.articles);
    notifyListeners();
  }

  getArticlesByCategory(String category) async {

    if (categoryArticles[category]!.length > 0) return categoryArticles[category];

    final url =
        '$_url_News/top-headlines?apiKey=$_api_Key&country=mx&category=$category';

    final response = await http.get(Uri.parse(url));

    final newsResponse = newsResponseFromJson(response.body);

    categoryArticles[category]!.addAll(newsResponse.articles);
    notifyListeners();

  }
}
