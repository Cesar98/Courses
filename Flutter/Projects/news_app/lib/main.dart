import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:news_app/src/pages/tabs_page.dart';
import 'package:news_app/src/services/news_service.dart';
import 'package:news_app/src/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new NewsService())],
      child: MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          theme: myTheme,
          home: TabsPage()),
    );
  }
}
