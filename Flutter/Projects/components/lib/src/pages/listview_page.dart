import 'package:flutter/material.dart';

import 'dart:async';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listNumbers = [];
  int _lastNumber = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _addImages();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _addImages();
        _fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewB'),
      ),
      body: Stack(
        children: [
          _createList(),
          _createLoading(),
        ],
      ),
    );
  }

  Widget _createList() {
    return RefreshIndicator(
      onRefresh: _loadPage,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _listNumbers.length,
        itemBuilder: (BuildContext context, int index) {
          final _image = _listNumbers[index];

          return FadeInImage(
              width: 400,
              placeholder: AssetImage('assets/rl.gif'),
              image: NetworkImage('https://picsum.photos/id/$_image/500/300'));
        },
      ),
    );
  }

  _addImages() {
    for (var i = 1; i < 10; i++) {
      _lastNumber++;
      _listNumbers.add(_lastNumber);
      setState(() {});
    }
  }

  Future _fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = Duration(seconds: 2);
    return new Timer(duration, responseHTTP);
  }

  void responseHTTP() {
    _isLoading = false;
    _addImages();
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
  }

  Widget _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircularProgressIndicator()],
          ),
          SizedBox(
            height: 15,
          )
        ],
      );
    } else {
      return Container();
    }
  }

  Future<Null> _loadPage() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, () {
      _listNumbers.clear();
      _lastNumber++;
      _addImages();
    });

    return Future.delayed(duration);
  }
}
