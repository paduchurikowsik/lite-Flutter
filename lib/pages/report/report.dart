import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mailer/flutter_mailer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:lite_swift/theme/colors.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key key}) : super(key: key);
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage>
    with SingleTickerProviderStateMixin {
  // GlobalKey<Tab> _scaffoldKey = new GlobalKey();

  TabController _tabController;
  GoogleMapController mapController;

  List<String> attachment = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  _showAlertDialogOnBack(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            title: Text('Alert'),
            content: Text('Are you sure you want to go back'),
            actions: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                textColor: navbarColor,
                child: Text('No'),
                // onPressed: () => Navigator.pop(context),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                color: navbarColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                textColor: navbarTextColor,
                child: Text('Yes'),
                // onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route) => false),
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false),
              )
            ],
          );
        });
  }

  Future<dynamic> _sendMail() async {
    print('hello');
    final MailOptions mailOptions = MailOptions(
      body: 'a long body for the email <br> with a subset of HTML',
      subject: 'the Email Subject',
      recipients: ['example@example.com'],
      isHTML: true,
      bccRecipients: ['other@example.com'],
      ccRecipients: ['third@example.com'],
      attachments: attachment,
    );

    try {
      return await FlutterMailer.send(mailOptions);
    } catch (error) {
      return error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: navbarColor,
          title: Text('Report an Accident',
              style: TextStyle(color: navbarTextColor)),
          centerTitle: true,
          elevation: 5.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: navbarTextColor),
            onPressed: () => _showAlertDialogOnBack(context),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                color: Colors.white10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Send', style: TextStyle(color: navbarTextColor)),
                    const SizedBox(width: 8.0),
                    Icon(
                      Icons.send,
                      color: navbarTextColor,
                    ),
                  ],
                ),
                onPressed: () {
                  _sendMail().then((e) {
                    if (e == null) {
                      // Navigator.of(context).pop(true);
                      Navigator.of(context).pop();
                    }
                  });
                },
              ),
            )
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: false,
            indicatorColor: navbarTextColor,
            labelColor: navbarTextColor,
            tabs: [
              Tab(text: 'My Info', icon: Icon(Icons.person)),
              Tab(text: 'Photos', icon: Icon(Icons.camera_alt)),
              Tab(text: 'Location', icon: Icon(Icons.location_on)),
              Tab(text: 'Parties', icon: Icon(Icons.remove_red_eye)),
              Tab(text: 'Insurance', icon: Icon(Icons.local_hospital)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Icon(Icons.directions_transit),
            photoFragment(),
            locationFragment(),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
        floatingActionButton: _bottomButtons(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
      onWillPop: () => _showAlertDialogOnBack(context),
    );
  }

  _nextPage(int n) {
    if (_tabController.index < _tabController.length - 1 &&
        _tabController.index >= 0) {
      _tabController.animateTo(_tabController.index + n);
    }
  }

  Widget _bottomButtons() {
    switch (_tabController.index) {
      case 0:
        return Hero(
            transitionOnUserGestures: true,
            tag: 'btn',
            child: FloatingActionButton(
                shape: StadiumBorder(),
                onPressed: () => _nextPage(1),
                backgroundColor: navbarColor,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.0,
                )));
        break;

      case 1:
        return Hero(
            transitionOnUserGestures: true,
            tag: 'btn',
            child: FloatingActionButton(
              shape: StadiumBorder(),
              onPressed: () => _nextPage(1),
              backgroundColor: navbarColor,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 20.0,
              ),
            ));
        break;

      case 2:
        return Hero(
            transitionOnUserGestures: true,
            tag: 'btn',
            child: FloatingActionButton(
                shape: StadiumBorder(),
                onPressed: () => _nextPage(1),
                backgroundColor: navbarColor,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.0,
                )));
        break;

      case 3:
        return Hero(
            transitionOnUserGestures: true,
            tag: 'btn',
            child: FloatingActionButton(
                shape: StadiumBorder(),
                onPressed: () => _nextPage(1),
                backgroundColor: navbarColor,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.0,
                )));
        break;

      case 4:
        return Hero(
            transitionOnUserGestures: true,
            tag: 'btn',
            child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: () {
                  _sendMail().then((e) {
                    if (e == null) {
                      // Navigator.of(context).pop(true);
                      Navigator.of(context).pop();
                    }
                  });
                },
                backgroundColor: Colors.redAccent,
                child: Icon(
                  Icons.send,
                  size: 20.0,
                )));
        break;

      default:
        return Hero(
            transitionOnUserGestures: true,
            tag: 'btn',
            child: FloatingActionButton(
                shape: StadiumBorder(),
                onPressed: () => _nextPage(1),
                backgroundColor: navbarColor,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20.0,
                )));
        break;
    }
  }

  void _picker(ImageSource source) async {
    File pick = await ImagePicker.pickImage(source: source);
    setState(() {
      attachment.add(pick.path);
    });
  }

  Widget photoFragment() {
    final Widget imagePath = GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 0.5,
        crossAxisCount: 2,
        children:
            attachment.map((filepath) => Image.file(File(filepath))).toList());
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('Image Picker'),
          onPressed: () {
            _picker(ImageSource.gallery);
          },
        ),
        RaisedButton(
          child: Text('Image Picker Camera'),
          onPressed: () {
            _picker(ImageSource.camera);
          },
        ),
        Expanded(child: imagePath),
      ],
    );
  }

  Widget locationFragment() {
    return Stack(
      children: [
      GoogleMap(
        onMapCreated: _onMapCreated,
        options: GoogleMapOptions(
          compassEnabled: false,
          rotateGesturesEnabled: false,
          scrollGesturesEnabled: false,
          tiltGesturesEnabled: false,
          trackCameraPosition: false,
          zoomGesturesEnabled: false,
          myLocationEnabled: true,
          mapType: MapType.normal,
          // cameraPosition: const CameraPosition(
          //   target: LatLng(-33.852, 151.211),
          //   zoom: 16.0,
          // ),
        ),
      ),
    ]);
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
      mapController.addMarker(
        MarkerOptions(
          position: LatLng(-33.852, 151.211),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    });
  }
}
