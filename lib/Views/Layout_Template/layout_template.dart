import 'package:flutter/material.dart';
import 'package:flutter_web/Routing/route_names.dart';
import 'package:flutter_web/Routing/router.dart';
import 'package:flutter_web/Services/navigation_service.dart';
import 'package:flutter_web/Views/Home/homeContentDesktop.dart';
import 'package:flutter_web/Views/Home/homeContentMobile.dart';
import 'package:flutter_web/Widgets/Centered%20View/centered_view.dart';
import 'package:flutter_web/Widgets/NavBar/NavigationDrawer/navigation_drawer.dart';
import 'package:flutter_web/Widgets/NavBar/navigation_bar.dart';
import 'package:flutter_web/locator.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
