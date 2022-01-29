import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/NavBar/NavigationDrawer/navigation_drawer.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max, //occupies the whole screen
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, //this is gonna place both items at the end of the widget(ROW)
        children: [
          NavBarLogo(),
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                //This is very important.
                //The function below allows user to tap on menu icon and
                //open the Drawer
                Scaffold.of(context).openEndDrawer();
              }),
        ],
      ),
    );
  }
}
