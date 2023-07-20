import 'package:ai_couch/screens/intro_screen.dart';
import 'package:ai_couch/screens/scaffold_widget.dart';
import 'package:ai_couch/util/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyTheme.lightTheme,
      home: IntroScreen(),
    );
  }
}
