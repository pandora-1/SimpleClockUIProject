import 'package:clock_ui_project/ClockPage.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:clock_ui_project/custom_function.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clock 1',
      theme: ThemeData(primaryColor: COLOR_WHITE),
      home: ClockPage(),
    );
  }
}

