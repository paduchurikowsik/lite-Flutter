import 'package:flutter/material.dart';
import 'package:lite_swift/theme/colors.dart';

Drawer getMenu(BuildContext context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        Container(
          decoration:
              BoxDecoration(color: drawerColor, border: Border.all(width: 0.0)),
          padding: EdgeInsets.all(0.0),
          margin: EdgeInsets.all(0.0),
          child: SafeArea(
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              title: Text(
                'Welcome',
                style: TextStyle(color: drawerListTextColor, fontSize: 20.0),
              ),
              subtitle: Text(
                'to CrashApp LITE',
                style: TextStyle(color: drawerListTextColor, fontSize: 20.0),
              ),
              trailing: RawMaterialButton(
                onPressed: () {
                  // Navigator.pushNamedAndRemoveUntil(context, '/', (Route<dynamic> route) => false);
                  Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
                },
                child: Icon(
                  Icons.home,
                  color: navbarColor,
                  size: 40.0,
                ),
                shape: CircleBorder(),
                elevation: 5.0,
                fillColor: Colors.white,
                padding: EdgeInsets.all(10.0),
              ),
              // trailing: IconButton(
              //   iconSize: 60.0,
              //   padding: EdgeInsets.all(0.0),
              //   icon: Icon(
              //     Icons.home,
              //     color: drawerListTextColor,
              //   ),
              //   onPressed: () {
              //     Navigator.pushNamedAndRemoveUntil(
              //         context, '/', (Route<dynamic> route) => false);
              //   },
              // ),
            ),
          ),
        ),
        Expanded(
          flex: 19,
          child: Container(
            margin: EdgeInsets.all(0.0),
            padding: EdgeInsets.all(0.0),
            decoration: BoxDecoration(
                color: drawerBackgroundColor, border: Border.all(width: 0.0)),
            child: ListView(
              padding: EdgeInsets.all(0.0),
              children: <Widget>[
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  textColor: drawerListTextColor,
                  child: ListTile(
                    title: Text('Firm'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // selected: (getCurrentRoute(context).n == "/home") ? true : false,
                    onTap: () {
                      // Navigator.pushNamedAndRemoveUntil(context, '/firm', (Route<dynamic> route) => false);
                      Navigator.of(context).pushNamedAndRemoveUntil('/firm', (Route<dynamic> route) => false);
                      // Navigator.popAndPushNamed(context, '/firm');
                    },
                  ),
                ),
                Divider(
                  height: 0.0,
                  color: drawerListDividerLineColor,
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  textColor: drawerListTextColor,
                  child: ListTile(
                    title: Text('Guide'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // selected: (getCurrentRoute(context).n == "/home") ? true : false,
                    onTap: () {
                      // Navigator.pushNamedAndRemoveUntil(context, '/guide', (Route<dynamic> route) => false);
                      Navigator.of(context).pushNamedAndRemoveUntil('/guide', (Route<dynamic> route) => false);
                      // Navigator.popAndPushNamed(context, '/firm');
                    },
                  ),
                ),
                Divider(
                  height: 0.0,
                  color: drawerListDividerLineColor,
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  textColor: drawerListTextColor,
                  child: ListTile(
                    title: Text('Services'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    // selected: (getCurrentRoute(context).n == "/home") ? true : false,
                    onTap: () {
                      // Navigator.pushNamedAndRemoveUntil(context, '/services',(Route<dynamic> route) => false);
                      Navigator.of(context).pushNamedAndRemoveUntil('/services', (Route<dynamic> route) => false);
                      // Navigator.popAndPushNamed(context, '/firm');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: drawerColor, border: Border.all(width: 0.0)),
                padding: EdgeInsets.all(0.0),
                child: SafeArea(
                  top: false,
                  right: false,
                  left: true,
                  bottom: true,
                  child: Text('\u00a9 2019 Strategic App Solutions, LLC', style: TextStyle(color: drawerCopyrightTextColor),),
                )))
      ],
    ),
  );
  // return Drawer(
  //   child: ListView(
  //     padding: EdgeInsets.all(0.0),
  //     children: <Widget>[
  //       Container(
  //         decoration: BoxDecoration(
  //           color: drawerColor,
  //           border: Border.all(width: 0.0)
  //         ),
  //         margin: EdgeInsets.all(0.0),
  //         padding: EdgeInsets.all(0.0),

  //         child: SafeArea(
  //           child: ListTile(
  //             contentPadding: EdgeInsets.all(10.0),
  //             title: Text(
  //               'Welcome',
  //               style: TextStyle(color: drawerListTextColor, fontSize: 20.0),
  //             ),
  //             subtitle: Text(
  //               'to CrashApp LITE',
  //               style: TextStyle(color: drawerListTextColor, fontSize: 20.0),
  //             ),
  //             trailing: IconButton(
  //               iconSize: 60.0,
  //               padding: EdgeInsets.all(0.0),
  //               icon: Icon(
  //                 Icons.home,
  //                 color: drawerListTextColor,
  //               ),
  //               onPressed: () {
  //                 Navigator.pushNamedAndRemoveUntil(
  //                     context, '/', (Route<dynamic> route) => false);
  //               },
  //             ),
  //           ),
  //         ),
  //       ),
  //       Container(
  //         margin: EdgeInsets.all(0.0),
  //         padding: EdgeInsets.all(0.0),
  //         decoration: BoxDecoration(
  //           color: drawerBackgroundColor,
  //           border: Border.all(width: 0.0)
  //         ),

  //         child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             mainAxisSize: MainAxisSize.max,
  //             children: [
  //               // ListTile(
  //               //   title: Text('Home'),
  //               //   // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //               //   onTap: () {
  //               //     Navigator.pushNamedAndRemoveUntil(
  //               //         context, '/', (Route<dynamic> route) => false);
  //               //     // Navigator.popAndPushNamed(context, '/home');
  //               //   },
  //               // ),
  //               ListTile(
  //                 title: Text('Firm'),
  //                 // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //                 onTap: () {
  //                   Navigator.pushNamedAndRemoveUntil(
  //                       context, '/firm', (Route<dynamic> route) => false);
  //                   // Navigator.popAndPushNamed(context, '/firm');
  //                 },
  //               ),
  //               ListTile(
  //                 title: Text('Guide'),
  //                 // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //                 onTap: () {
  //                   Navigator.pushNamedAndRemoveUntil(
  //                       context, '/guide', (Route<dynamic> route) => false);
  //                   // Navigator.popAndPushNamed(context, '/guide');
  //                 },
  //               ),
  //               ListTile(
  //                 title: Text('Services'),
  //                 // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //                 onTap: () {
  //                   Navigator.pushNamedAndRemoveUntil(
  //                       context, '/services', (Route<dynamic> route) => false);
  //                   // Navigator.popAndPushNamed(context, '/services');
  //                 },
  //               ),
  //             ]),
  //       )
  //     ],
  //   ),
  // );

  // return Drawer(
  //   child: ListView(
  //     shrinkWrap: true,
  //     padding: EdgeInsets.zero,
  //     children: <Widget>[
  //       Container(
  //         padding: EdgeInsets.all(0.0),
  //         height: 100.0,
  //         color: drawerColor,
  //         child: DrawerHeader(
  //           child: Text('Drawer Header'),
  //           decoration: BoxDecoration(
  //             color: Colors.blue,
  //           ),
  //         ),
  //       ),
  //       ListTile(
  //         title: Text('Home'),
  //         // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //         onTap: () {
  //           Navigator.pushNamedAndRemoveUntil(
  //               context, '/', (Route<dynamic> route) => false);
  //           // Navigator.popAndPushNamed(context, '/home');
  //         },
  //       ),
  //       ListTile(
  //         title: Text('Firm'),
  //         // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //         onTap: () {
  //           Navigator.pushNamedAndRemoveUntil(
  //               context, '/firm', (Route<dynamic> route) => false);
  //           // Navigator.popAndPushNamed(context, '/firm');
  //         },
  //       ),
  //       ListTile(
  //         title: Text('Guide'),
  //         // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //         onTap: () {
  //           Navigator.pushNamedAndRemoveUntil(
  //               context, '/guide', (Route<dynamic> route) => false);
  //           // Navigator.popAndPushNamed(context, '/guide');
  //         },
  //       ),
  //       ListTile(
  //         title: Text('Services'),
  //         // selected: (getCurrentRoute(context).n == "/home") ? true : false,
  //         onTap: () {
  //           Navigator.pushNamedAndRemoveUntil(
  //               context, '/services', (Route<dynamic> route) => false);
  //           // Navigator.popAndPushNamed(context, '/services');
  //         },
  //       ),
  //       Text('\u00a9 2019 Strategic App Solutions, LLC')
  //     ],
  //   ),
  // );
}
