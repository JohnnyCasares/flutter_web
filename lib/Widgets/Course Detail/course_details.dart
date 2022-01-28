import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Flutter WEB Basics',
            style: TextStyle(
                fontWeight: FontWeight.w800, height: 0.9, fontSize: 60),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Let's get to one of the most exciting features on the Horizon for Flutter. Web Development using Flutter. I am so excited for this feature because I've always struggled with web development. Now I can be at the forefront and learn with you how to do the basics together",
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}
