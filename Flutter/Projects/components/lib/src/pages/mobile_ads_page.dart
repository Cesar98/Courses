import 'package:components/src/utils/ad_state.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

class MobileAdsPage extends StatefulWidget {
  @override
  State<MobileAdsPage> createState() => _MobileAdsPageState();
}

class _MobileAdsPageState extends State<MobileAdsPage> {
  BannerAd? banner;
  BannerAd? largeBanner;
  BannerAd? rectangleBanner;
  BannerAd? fullBanner;
  BannerAd? leaderBanner;

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

        largeBanner = BannerAd(
            adUnitId: adState.bannerAdUnitId,
            size: AdSize.largeBanner,
            request: AdRequest(),
            listener: adState.listener)
          ..load();

        rectangleBanner = BannerAd(
            adUnitId: adState.bannerAdUnitId,
            size: AdSize.mediumRectangle,
            request: AdRequest(),
            listener: adState.listener)
          ..load();

        fullBanner = BannerAd(
            adUnitId: adState.bannerAdUnitId,
            size: AdSize.fullBanner,
            request: AdRequest(),
            listener: adState.listener)
          ..load();

        leaderBanner = BannerAd(
            adUnitId: adState.bannerAdUnitId,
            size: AdSize.leaderboard,
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
        title: Text('Mobile ads content'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          _checkBanner(),
          SizedBox(
            height: 20,
          ),
          _checkLargeBanner(),
          SizedBox(
            height: 20,
          ),
          _checkMediumRectangleBanner(),
          SizedBox(
            height: 20,
          ),
          _checkFullBanner(),
          SizedBox(
            height: 20,
          ),
          _checkLeaderBanner()
        ]),
      ),
    );
  }

  bool _checkBannerStatus(BannerAd ban) {
    return ban == null ? true : false;
  }

  Widget _blankContent(String failed) {
    return Container(
      height: 50,
      color: Colors.red,
      child: Text(failed),
    );
  }

  Widget _checkBanner() {
    return _checkBannerStatus(banner!)
        ? _blankContent('banner 50')
        : Container(
            height: 50,
            child: AdWidget(
              ad: banner!,
            ),
          );
  }

  Widget _checkLargeBanner() {
    return _checkBannerStatus(largeBanner!)
        ? _blankContent('banner 100')
        : Container(
            height: 100,
            child: AdWidget(
              ad: largeBanner!,
            ),
          );
  }

  Widget _checkMediumRectangleBanner() {
    return _checkBannerStatus(rectangleBanner!)
        ? _blankContent('banner 250')
        : Container(
            height: 250,
            child: AdWidget(
              ad: rectangleBanner!,
            ),
          );
  }

  Widget _checkFullBanner() {
    return _checkBannerStatus(fullBanner!)
        ? _blankContent('banner 468 X 60')
        : Container(
            height: 60,
            width: 468,
            child: AdWidget(
              ad: fullBanner!,
            ),
          );
  }

  Widget _checkLeaderBanner() {
    return _checkBannerStatus(leaderBanner!)
        ? _blankContent('banner 728 X 90')
        : Container(
            height: 90,
            width: 728,
            child: AdWidget(
              ad: leaderBanner!,
            ),
          );
  }
}
