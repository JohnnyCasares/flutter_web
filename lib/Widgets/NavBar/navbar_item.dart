import 'package:flutter/material.dart';
import 'package:flutter_web/Services/navigation_service.dart';
import 'package:flutter_web/locator.dart';

//Now with this call being a public class, we can use it as a template
//through out the app
class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const NavBarItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
