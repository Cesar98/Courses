import 'package:flutter/material.dart';

import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/pages/avatar_page.dart';
import 'package:components/src/pages/home_page.dart';
import 'package:components/src/pages/loading_page.dart';
import 'package:components/src/pages/card_page.dart';
import 'package:components/src/pages/animated_container.dart';
import 'package:components/src/pages/input_page.dart';
import 'package:components/src/pages/listview_page.dart';
import 'package:components/src/pages/mobile_ads_page.dart';
import 'package:components/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'loading': (BuildContext context) => LoadingPage(),
    'animatedContainer': (BuildContext context) => AnimateContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListPage(),
    'mobile_ads': (BuildContext context) => MobileAdsPage(),
  };
}
