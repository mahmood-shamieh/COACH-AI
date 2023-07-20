import 'package:ai_couch/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerItem extends StatelessWidget {
  IconData icon;
  String text;
  Function()? navigation;
  bool? selected;
  DrawerItem(
      {super.key,
      required this.icon,
      required this.text,
      this.navigation,
      this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).closeDrawer();
          navigation!();
        },
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: selected ?? false
                  ? Theme.of(context).buttonColor
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(10)),
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Icon(
                  icon,
                  color: Theme.of(context).shadowColor,
                  size: 28,
                ),
              ),
              TextWidget(
                text: text,
                color: Theme.of(context).shadowColor,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      ),
    );
  }
}
