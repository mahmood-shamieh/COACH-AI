import 'package:ai_couch/widgets/animation_widget.dart';
import 'package:ai_couch/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MuscleWidget extends StatelessWidget {
  const MuscleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationWidget(
        body: Container(
      margin: const EdgeInsets.only(bottom: 4, left: 4),
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).buttonColor,
      ),
      child: TextWidget(
        text: 'muscles'.capitalizeFirst!,
        color: Theme.of(context).shadowColor,
      ),
    ));
  }
}
