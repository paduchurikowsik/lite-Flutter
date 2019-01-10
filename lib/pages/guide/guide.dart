import 'package:flutter/material.dart';
import 'package:lite_swift/utils/drawer.dart';

class GuidePage extends StatefulWidget {
  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guide'),
      ),
      drawer: getMenu(context),
      body: Center(
        child: Container(
          child: Text('Guide Page'),
        ),
      ),
    );
  }
}
