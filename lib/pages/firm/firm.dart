import 'package:flutter/material.dart';
import 'package:lite/utils/drawer.dart';

class FirmPage extends StatefulWidget {
  @override
  _FirmPageState createState() => _FirmPageState();
}

class _FirmPageState extends State<FirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firm'),
      ),
      drawer: getMenu(context),
      body: Center(
        child: Container(
          child: Text('Firm Page'),
        ),
      ),
    );
  }
}
