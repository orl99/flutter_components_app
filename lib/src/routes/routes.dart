import 'package:components_app/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

// Pages
import 'package:components_app/src/pages/home_page.dart';

Map getAppRoutes() {
  final routes = <String, WidgetBuilder> {
    '/'       : (BuildContext context) => HomePage(),
    'alert'   : (BuildContext context) => AlertPage()
  };
  return routes;
}