import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_web/Routing/route_names.dart';
import 'package:flutter_web/Views/About/about_view.dart';
import 'package:flutter_web/Views/Episodes/episodes_view.dart';
import 'package:flutter_web/Views/Home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // Use route keys or names
    //for example: AboutRoute is used as input in NavBarItem constructor
    //The NavBarItem has a gesture detector, and the AboutRoute name/key
    //works as that key that takes the info to this router.dart, where AboutRoute
    //works in a switch statement as a case that will end up showing us the about view
    //which is what the user actually sees in the screen
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
  return _FadeRoute(child: child);
}

// This is to override the defualt animation
class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
            pageBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
            ) =>
                child,
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) =>
                FadeTransition(
                  opacity: animation,
                  child: child,
                ));
}
