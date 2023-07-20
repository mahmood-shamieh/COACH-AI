import 'package:ai_couch/widgets/exercises_block.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class HomeSereen extends StatelessWidget {
  const HomeSereen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [1, 2, 3, 4, 5].map((e) => ExersiseBlock()).toList(),
      ),
    );
  }
}
