import 'package:flutter/material.dart';
import 'package:news_app/src/pages/tab1_page.dart';
import 'package:provider/provider.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => _NavigationModel(),
      child: Scaffold(
        body: _Pages(),
        bottomNavigationBar: _BottomNavBar(),
      ),
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navModel = Provider.of<_NavigationModel>(context);

    return BottomNavigationBar(
      currentIndex: navModel.actualPage,
      onTap: (value) {
        navModel.actualPage = value;
      },
      elevation: 10.0,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.android_rounded), label: 'For u'),
        BottomNavigationBarItem(
            icon: Icon(Icons.public_rounded), label: 'For others'),
      ],
    );
  }
}

class _Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navModel = Provider.of<_NavigationModel>(context);

    return PageView(
      /* physics: BouncingScrollPhysics(), */
      controller: navModel.pageController,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Tab1Page(),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }
}

class _NavigationModel extends ChangeNotifier {
  int _actualPage = 0;
  PageController _pageController = new PageController();

  int get actualPage => _actualPage;

  set actualPage(int page) {
    _actualPage = page;
    _pageController.animateToPage(page,
        duration: Duration(milliseconds: 250), curve: Curves.easeInOut);
    notifyListeners();
  }

  PageController get pageController => _pageController;
}
