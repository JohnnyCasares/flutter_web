import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_web/Routing/route_names.dart';
import 'package:flutter_web/Views/About/about_view.dart';
import 'package:flutter_web/Views/Episodes/episodes_view.dart';
import 'package:flutter_web/Views/Home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case EpisodesRoute:
      return _getPageRoute(EpisodesView());
    default:
  }
  return _getPageRoute(HomeView());
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
