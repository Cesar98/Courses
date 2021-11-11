import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:news_app/src/services/news_service.dart';
import 'package:news_app/src/widgets/news_list.dart';

class Tab1Page extends StatefulWidget {
  @override
  State<Tab1Page> createState() => _Tab1PageState();
}

class _Tab1PageState extends State<Tab1Page> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return Scaffold(
        backgroundColor: Colors.black54,
        body: newsService.headlines.length != 0
            ? NewsList(newsService.headlines)
            : Center(child: CircularProgressIndicator()));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
