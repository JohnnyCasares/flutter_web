import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_item.dart';

//NavigationDrawerItem is a class that is gonna serve as a template for any option
//that needs to be added to the side menu (drawer)
class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(
      {required this.icon, required this.title, required this.navigationPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 30,
          ),
          NavBarItem(title, navigationPath),
        ],
      ),
    );
  }
}
