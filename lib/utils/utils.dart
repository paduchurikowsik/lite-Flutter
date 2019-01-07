import 'package:flutter/material.dart';

Route getCurrentRoute(BuildContext context){
  Route currentRoute;
  Navigator.popUntil(context, (route) {
    currentRoute = route;
    return true;
  });
  print(currentRoute);
  return currentRoute;
 
}