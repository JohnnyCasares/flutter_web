import 'package:flutter/material.dart';

//Now with this call being a public class, we can use it as a template
//through out the app
class NavBarItem extends StatelessWidget {
  final String title;
  const NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
