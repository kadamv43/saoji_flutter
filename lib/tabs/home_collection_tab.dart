import 'package:flutter/material.dart';

class HomeCollectionTab extends StatefulWidget {
  const HomeCollectionTab({Key? key}) : super(key: key);

  @override
  _HomeCollectionTabState createState() => _HomeCollectionTabState();
}

class _HomeCollectionTabState extends State<HomeCollectionTab> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(child: new Text("Book Home collection Page")));
  }
}
