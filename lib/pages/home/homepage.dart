import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:lite_swift/utils/drawer.dart';
import 'package:lite_swift/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _launched;
  String _phoneNum = '8139565825';
  String _call911 = '911';

  Future<void> _makePhoneCall(String phNum) async {
    if (await canLaunch(phNum)) {
      await launch(phNum);
    } else {
      throw 'Could not launch $phNum';
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navbarColor,
        brightness: Brightness.dark,
        title: Text('Home', style: TextStyle(color: navbarTextColor)),
        centerTitle: true,
        elevation: 5.0,
      ),
      drawer: getMenu(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
            padding: EdgeInsets.all(0.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Material(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8.0),
              // borderRadius: BorderRadius.vertical(
              //     top: Radius.circular(8.0), bottom: Radius.zero),
              elevation: 5.0,
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    // borderRadius: new BorderRadius.circular(8.0),
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(8.0), bottom: Radius.zero),
                    child: Image.asset('images/attorney_banner_home.png'),
                  ),
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: stripeBackgroundColor,
                      borderRadius: BorderRadius.vertical(
                          top: Radius.zero, bottom: Radius.circular(8.0)),
                    ),
                    child: Center(
                      child: Text('www.wearesas.com',
                          style: TextStyle(
                              color: navbarColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
              padding: EdgeInsets.all(0.0),
              child: Divider(color: navbarColor,)),
          // Container(
          //   color: Colors.transparent,
          //   margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
          //   padding: EdgeInsets.all(0.0),
          //   height: 50.0,
          //   child: Material(
          //     // borderRadius: BorderRadius.circular(8.0),
          //     borderRadius: BorderRadius.vertical(
          //         top: Radius.zero, bottom: Radius.circular(8.0)),
          //     elevation: 5.0,
          //     color: stripeBackgroundColor,
          //     child: Center(
          //       child: Text('www.wearesas.com',
          //           style: TextStyle(
          //               color: navbarColor,
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w500)),
          //     ),
          //   ),
          // ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(
                  left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
              width: MediaQuery.of(context).size.width - 20.0,
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(8.0),
              //   color: navbarColor,
              // ),
              child: Center(
                child: Text(
                  'Before continuing, please ensure everyone involved in this accident is safe! If there are signs of any serious injuries, please contact emergency services.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: homeTextColor, fontSize: 15.0),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
              padding: EdgeInsets.all(0.0),
              child: Divider(color: navbarColor,)),
          Expanded(
              flex: 12,
              child: Container(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                width: MediaQuery.of(context).size.width - 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 5.0,
                      padding: EdgeInsets.all(15.0),
                      color: navbarColor,
                      child: Text(
                        'Report an Accident',
                        style:
                            TextStyle(fontSize: 20.0, color: navbarTextColor),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/report');
                        // Navigator.pushNamed(context, '/report');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    SizedBox(height: 15.0),
                    RaisedButton(
                      elevation: 5.0,
                      padding: EdgeInsets.all(15.0),
                      color: navbarColor,
                      child: Text(
                        'Call Lawyer',
                        style:
                            TextStyle(fontSize: 20.0, color: navbarTextColor),
                      ),
                      onPressed: () => setState(() {
                            _launched = _makePhoneCall('tel:$_phoneNum');
                          }),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    SizedBox(height: 15.0),
                    RaisedButton(
                      elevation: 5.0,
                      padding: EdgeInsets.all(15.0),
                      color: call911ButtonColor,
                      child: Text(
                        'Call 911',
                        style:
                            TextStyle(fontSize: 20.0, color: navbarTextColor),
                      ),
                      onPressed: () => setState(() {
                            _launched = _makePhoneCall('tel:$_call911');
                          }),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                    FutureBuilder<void>(
                        future: _launched, builder: _launchStatus),
                  ],
                ),

                // child: RaisedButton(
                //   child: Text('Report an Accident'),
                //   onPressed: () {},
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(8.0)),
                // ),
              ))
        ],
      ),
    );
  }
}
