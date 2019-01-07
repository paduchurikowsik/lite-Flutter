import 'package:flutter/material.dart';
import 'package:lite/theme/colors.dart';

Drawer getMenu(BuildContext context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        Container(
          decoration:
              BoxDecoration(color: drawerColor, border: Border.all(width: 0.0)),
          padding: EdgeInsets.all(0.0),
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
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (Route<dynamic> route) => false);
                },
                child: new Icon(
                  Icons.home,
                  color: navbarColor,
                  size: 40.0,
                ),
                shape: new CircleBorder(),
                elevation: 5.0,
                fillColor: Colors.white,
                padding: const EdgeInsets.all(10.0),
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
          child: Container(
            decoration: BoxDecoration(
                color: drawerBackgroundColor, border: Border.all(width: 0.0)),
            child: ListView(
              children: <Widget>[
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  textColor: drawerListTextColor,
                  child: ListTile(
                    title: Text('Firm'),
                    // selected: (getCurrentRoute(context).n == "/home") ? true : false,
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/firm', (Route<dynamic> route) => false);
                      // Navigator.popAndPushNamed(context, '/firm');
                    },
                  ),
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  textColor: drawerListTextColor,
                  child: ListTile(
                    title: Text('Guide'),
                    // selected: (getCurrentRoute(context).n == "/home") ? true : false,
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/guide', (Route<dynamic> route) => false);
                      // Navigator.popAndPushNamed(context, '/firm');
                    },
                  ),
                ),
                ListTileTheme(
                  style: ListTileStyle.drawer,
                  textColor: drawerListTextColor,
                  child: ListTile(
                    title: Text('Services'),
                    // selected: (getCurrentRoute(context).n == "/home") ? true : false,
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(context, '/services',
                          (Route<dynamic> route) => false);
                      // Navigator.popAndPushNamed(context, '/firm');
                    },
                  ),
                ),
              ],
            ),
          ),
        )
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
