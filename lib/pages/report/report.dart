import 'package:flutter/material.dart';
import 'package:lite/theme/colors.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  _showAlertDialogOnBack(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(8.0)
            ),
            title: Text('Alert'),
            content: Text('Are you sure you want to go back'),
            actions: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                textColor: navbarColor,
                child: Text('No'),
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                color: navbarColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                textColor: navbarTextColor,
                child: Text('Yes'),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/', (Route<dynamic> route) => false),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
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
                onPressed: () {},
              ),
            )
          ],
          bottom: TabBar(
            indicatorColor: navbarTextColor,
            labelColor: navbarTextColor,
            tabs: [
              Tab(text: 'One', icon: Icon(Icons.directions_car)),
              Tab(text: 'Two', icon: Icon(Icons.directions_transit)),
              Tab(text: 'Three', icon: Icon(Icons.directions_bike)),
              Tab(text: 'Four', icon: Icon(Icons.directions_transit)),
              Tab(text: 'Five', icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: Text('Report Page'),
          ),
        ),
      ),
    );
  }
}
