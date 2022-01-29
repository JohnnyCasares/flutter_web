import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/NavBar/NavigationDrawer/drawer_item.dart';
import 'package:flutter_web/Widgets/NavBar/NavigationDrawer/navigation_drawer_header.dart';

//This class is the over all drawer
//Here we place the other pieces like the header and the item

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
          ),
          DrawerItem(icon: Icons.help, title: 'About')
        ],
      ),
    );
  }
}
