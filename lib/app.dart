import 'package:flutter/material.dart';
import 'package:lite/pages/report/report.dart';
// import 'package:lite/theme/colors.dart';

import 'package:lite/pages/home/homepage.dart';
import 'package:lite/pages/firm/firm.dart';
import 'package:lite/pages/guide/guide.dart';
import 'package:lite/pages/services/services.dart';

class LiteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lite App",
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/firm': (context) => FirmPage(),
        '/guide': (context) => GuidePage(),
        '/services': (context) => ServicesPage(),
        '/report': (context) => ReportPage(),
      },
      theme: _appTheme,
    );
  }
}

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith();
}
