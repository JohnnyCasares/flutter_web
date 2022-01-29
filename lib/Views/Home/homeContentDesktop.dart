import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/Call%20to%20Action/call_to_action.dart';
import 'package:flutter_web/Widgets/Call%20to%20Action/call_to_action_tablet_desktop.dart';
import 'package:flutter_web/Widgets/Course%20Detail/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          CourseDetails(),
          Expanded(
              child: Center(
            child: CallToAction('Join Course'),
          ))
        ],
      ),
    );
  }
}
