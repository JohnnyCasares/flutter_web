import 'package:flutter/material.dart';

//Navigation will be happening inside the navigation navbar item
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  //this will be used to call the navigate functionality in the nav state
  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  goBack() {
    return navigatorKey.currentState?.pop();
  }
}
