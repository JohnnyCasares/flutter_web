import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/Call%20to%20Action/call_to_action.dart';
import 'package:flutter_web/Widgets/Course%20Detail/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Added scroll view to the mobile version because of pixel overflow
    //Might have to add to the desktop version if overflow occurs
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDetails(),
          SizedBox(
            height: 100,
          ),
          CallToAction('Join Course')
        ],
      ),
    );
  }
}
