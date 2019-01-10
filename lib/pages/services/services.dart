import 'package:flutter/material.dart';
import 'package:lite_swift/utils/drawer.dart';

class ServicesPage extends StatefulWidget {
  @override
  _ServicesPageState createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
      ),
      drawer: getMenu(context),
      body: Center(
        child: Container(
          child: Text('Services Page'),
        ),
      ),
    );
  }
}
