import 'package:flutter/material.dart';
import 'package:flutter_web/Widgets/Call%20to%20Action/call_to_action_mobile.dart';
import 'package:flutter_web/Widgets/Call%20to%20Action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  String title;
  CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      desktop: CallToActionTabletDesktop(title),
    );
  }
}
