import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_item.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        //This feature of spaceBetween Places the free space evenly between the children
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Episodes'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
            ],
          ),
        ],
      ),
    );
  }
}
