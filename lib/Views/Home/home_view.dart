import 'package:flutter/material.dart';
import 'package:flutter_web/Views/Home/homeContentDesktop.dart';
import 'package:flutter_web/Views/Home/homeContentMobile.dart';
import 'package:flutter_web/Widgets/Call%20to%20Action/call_to_action.dart';
import 'package:flutter_web/Widgets/Centered%20View/centered_view.dart';
import 'package:flutter_web/Widgets/Course%20Detail/course_details.dart';
import 'package:flutter_web/Widgets/NavBar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        //I tried adding scroll view but it doesnt work
        //Scroll views must be added to the specific Home Content of the layout
        //meaning inside HomeContentDesktop or Mobile
        child: Column(
          children: [
            OriginalNavigationBar(),
            Expanded(
                child: ScreenTypeLayout(
              desktop: HomeContentDesktop(),
              mobile: HomeContentMobile(),
            ))
          ],
        ),
      ),
    );
  }
}
