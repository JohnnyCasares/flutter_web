import 'package:flutter/material.dart';
import 'package:flutter_web/Views/Home/home_view.dart';
import 'package:flutter_web/Views/Layout_Template/layout_template.dart';
import 'package:flutter_web/locator.dart';

void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      home: LayoutTemplate(),
    );
  }
}
