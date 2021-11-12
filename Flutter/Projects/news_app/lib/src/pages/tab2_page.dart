import 'package:flutter/material.dart';
import 'package:news_app/src/models/category_model.dart';
import 'package:news_app/src/services/news_service.dart';
import 'package:news_app/src/theme/theme.dart';
import 'package:news_app/src/widgets/news_list.dart';
import 'package:provider/provider.dart';

class Tab2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);
    return Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(children: [
            _CategoresList(),
            Expanded(
                child: newsService.getSelectedCategoryArticles.length > 0
                    ? NewsList(newsService.getSelectedCategoryArticles)
                    : Center(child: CircularProgressIndicator()))
          ]),
        ));
  }
}

class _CategoresList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return Container(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: newsService.categories.length,
        itemBuilder: (BuildContext context, int index) {
          final categoryName = newsService.categories[index].name;

          return Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                _CategoryButton(category: newsService.categories[index]),
                SizedBox(height: 5),
                Text(
                    '${categoryName[0].toUpperCase()}${categoryName.substring(1)}')
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CategoryButton extends StatelessWidget {
  final Category category;

  const _CategoryButton({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final newsService = Provider.of<NewsService>(context);

    return GestureDetector(
      onTap: () {
        final newsService = Provider.of<NewsService>(context, listen: false);

        newsService.selectedCategory = category.name;
      },
      child: Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: newsService.selectedCategory != category.name
              ? Colors.white
              : myTheme.indicatorColor,
          shape: BoxShape.circle,
        ),
        child: Icon(category.icon,
            color: newsService.selectedCategory != category.name
                ? Colors.black54
                : Colors.black),
      ),
    );
  }
}
