// material
import 'package:flutter/material.dart';

// Pages
import 'package:components_app/src/pages/alert_page.dart';
import 'package:components_app/src/pages/avatar_page.dart';
import 'package:components_app/src/pages/home_page.dart';
import 'package:components_app/src/pages/animated_container.dart';
import 'package:components_app/src/pages/input_page.dart';
import 'package:components_app/src/pages/cards_page.dart';
import 'package:components_app/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  final routes = <String, WidgetBuilder> {
    '/'         : (BuildContext context) => HomePage(),
    'alert'     : (BuildContext context) => AlertPage(),
    'avatar'    : (BuildContext context) => AvatarPage(),
    'card'      : (BuildContext context) => CardPage(),
    'animated'  : (BuildContext contect) => AnimatedContainerPage(),
    'inputPage' : (BuildContext contect) => InputPage(),
    'sliderPage': (BuildContext contect) => SliderPage(),
  };
  return routes;
}