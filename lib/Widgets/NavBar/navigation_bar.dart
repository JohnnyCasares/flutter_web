import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_item.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_logo.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_mobile.dart';
import 'package:flutter_web/Widgets/NavBar/navbar_tablet-desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

//This is the navigation bar of the application
//like a menu in a website, where everything is on a top nav. bar
class OriginalNavigationBar extends StatelessWidget {
  const OriginalNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
      desktop: NavigationBarTabletDesktop(),
    );
  }
}
