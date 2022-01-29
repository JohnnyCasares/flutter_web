import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Wrapped container with Responsive Builder in order to supply a function
    //which allows for making changes depending on context
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      //varible for text alignment, ternary operator will be helpful to switch
      //alignment of text depending on screen type (size)
      var textAlignment =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? TextAlign.left
              : TextAlign.center;
      //Variables for title and description font size
      //Ternary operator is used in the same way as before
      //When screen is mobile, text adapts and become smaller
      double titleFontSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 50
              : 80;
      double descriptionFontSize =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 16
              : 21;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter Web\nThe Basics',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleFontSize),
              textAlign: textAlignment,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Let's get to one of the most exciting features on the Horizon for Flutter. Web Development using Flutter. I am so excited for this feature because I've always struggled with web development. Now I can be at the forefront and learn with you how to do the basics together",
              style: TextStyle(
                fontSize: descriptionFontSize,
                height: 1.7,
              ),
              textAlign: textAlignment,
            ),
          ],
        ),
      );
    });
  }
}
