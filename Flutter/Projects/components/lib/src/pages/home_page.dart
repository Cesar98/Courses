import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:components/src/utils/ad_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // represents the single banner ad
  BannerAd? banner;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final adState = Provider.of<AdState>(context);

    adState.initialization?.then((status) {
      setState(() {
        banner = BannerAd(
            adUnitId: adState.bannerAdUnitId,
            size: AdSize.banner,
            request: AdRequest(),
            listener: adState.listener)
          ..load();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principal'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _itemsList(snapshot.data!, context),
        );
      },
    );
  }

  List<Widget> _itemsList(List<dynamic> elements, BuildContext context) {
    final List<Widget> listed = [];

    final Widget adBox;
    if (banner == null) {
      adBox = SizedBox(
        height: 50,
      );
    } else {
      adBox = Container(
        height: 50,
        child: AdWidget(ad: banner!),
      );
    }

    listed.add(adBox);

    elements.forEach((element) {
      final widgetElement = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing:
            Icon(Icons.keyboard_arrow_right_outlined, color: Colors.black),
        onTap: () {
          /* final route = MaterialPageRoute(
            builder: (context) => AlertPage(),
          );
          Navigator.push(context, route); */
          Navigator.pushNamed(context, element['ruta']);
        },
      );

      listed
        ..add(widgetElement)
        ..add(Divider());
    });

    return listed;
  }
}
