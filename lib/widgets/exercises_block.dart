import 'package:ai_couch/widgets/animation_widget.dart';
import 'package:ai_couch/widgets/muscle_widget.dart';
import 'package:ai_couch/widgets/my_image_widget.dart';
import 'package:ai_couch/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ExersiseBlock extends StatelessWidget {
  const ExersiseBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimationWidget(
        body: Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: (MediaQuery.of(context).size.width / 2) - 10,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyImageWidget(
            width: (MediaQuery.of(context).size.width / 2) - 10,
            height: (MediaQuery.of(context).size.width / 2) - 10,
            borderRadius: BorderRadius.circular(10),
            imageURL:
                'https://edb-4rme8.ondigitalocean.app/image/vgJelrodxIwYhu',
          ),
          TextWidget(
            text: 'exersies name'.capitalizeFirst!,
            color: Theme.of(context).shadowColor,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: [1, 2].map((e) => MuscleWidget()).toList(),
          )
        ],
      ),
    ));
  }
}
