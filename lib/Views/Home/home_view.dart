import 'package:flutter/material.dart';
import 'package:flutter_web/Views/Home/homeContentDesktop.dart';
import 'package:flutter_web/Views/Home/homeContentMobile.dart';
import 'package:flutter_web/Widgets/Call%20to%20Action/call_to_action_tablet_desktop.dart';
import 'package:flutter_web/Widgets/Centered%20View/centered_view.dart';
import 'package:flutter_web/Widgets/Course%20Detail/course_details.dart';
import 'package:flutter_web/Widgets/NavBar/NavigationDrawer/navigation_drawer.dart';
import 'package:flutter_web/Widgets/NavBar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
//Home view is where all the lego pieces are placed together

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Wrapped the Scaffold with ResponsiveBuilder in order for the drawer to be accessible
    //only when the screen type is mobile
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        endDrawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          //I tried adding scroll view but it doesnt work
          //Scroll views must be added to the specific Home Content of the layout
          //meaning inside HomeContentDesktop or Mobile
          child: Column(
            children: [
              OriginalNavigationBar(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ScreenTypeLayout(
                desktop: HomeContentDesktop(),
                mobile: HomeContentMobile(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
