import 'package:ai_couch/screens/drawer_screen.dart';
import 'package:ai_couch/screens/home_screen.dart';
import 'package:ai_couch/widgets/drawer_item.dart';
import 'package:ai_couch/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        title: TextWidget(
          text: 'COACH AI',
          fontWeight: FontWeight.bold,
          size: 22,
          color: Theme.of(context).shadowColor,
        ),
        centerTitle: true,
      ),
      body: HomeSereen(),
    );
  }
}
