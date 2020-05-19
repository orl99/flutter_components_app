// material
import 'package:components_app/src/pages/cards_page.dart';
import 'package:flutter/material.dart';

// Pages
import 'package:components_app/src/pages/alert_page.dart';
import 'package:components_app/src/pages/avatar_page.dart';
import 'package:components_app/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  final routes = <String, WidgetBuilder> {
    '/'       : (BuildContext context) => HomePage(),
    'alert'   : (BuildContext context) => AlertPage(),
    'avatar'  : (BuildContext context) => AvatarPage(),
    'card'    : (BuildContext context) => CardPage(),
  };
  return routes;
}