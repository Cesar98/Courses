import 'package:flutter/material.dart';

import 'package:news_app/src/models/news_models.dart';

class NewsList extends StatelessWidget {
  final List<Article> news;
  const NewsList(this.news);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        return _SingleNews(singleNews: news[index], index: index);
      },
    );
  }
}

class _SingleNews extends StatelessWidget {
  final Article singleNews;
  final int index;

  const _SingleNews({required this.singleNews, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CardTopBar(news: singleNews, index: index),
        _CardTitle(news: singleNews),
        _CardImage(news: singleNews),
        _CardBody(news: singleNews),
        SizedBox(height: 10),
        Divider()
      ],
    );
  }
}

class _CardTopBar extends StatelessWidget {
  final Article news;
  final int index;

  const _CardTopBar({Key? key, required this.news, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [Text('${index + 1}. '), Text('${news.source.name}')],
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  final Article news;

  const _CardTitle({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        news.title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _CardImage extends StatelessWidget {
  final Article news;

  const _CardImage({Key? key, required this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: news.urlToImage != null ?
      FadeInImage(
        placeholder: AssetImage('assets/giphy.gif'),
        image: NetworkImage(news.urlToImage!),
      )
      :
      Image(image: AssetImage('assets/no-image.png'))
    );
  }
}

class _CardBody extends StatelessWidget {
  final Article news;

  const _CardBody({Key? key, required this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return news.description != null ? Text(news.description!) : Text('No description');
  }
}
