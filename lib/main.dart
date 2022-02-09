// ignore_for_file: use_key_in_widget_constructors

import 'package:course_app_1/constants/colors.dart';
import 'package:course_app_1/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: KBackground,
      home: HomePage(),
    );
  }
}
