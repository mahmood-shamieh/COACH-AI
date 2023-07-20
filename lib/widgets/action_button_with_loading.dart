import 'package:ai_couch/widgets/animation_widget.dart';
import 'package:ai_couch/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ActionButtonWithLoading extends StatelessWidget {
  Color? colors;

  bool? loadingVariable;
  Function()? action;
  String? text;
  EdgeInsets? padding;
  EdgeInsets? margin;
  FontWeight? fontWeight;
  Color? textColor;
  double? textSize;
  ActionButtonWithLoading(
      {super.key,
      this.colors,
      this.loadingVariable,
      this.text,
      this.action,
      this.margin,
      this.padding,
      this.fontWeight,
      this.textColor,
      this.textSize});

  @override
  Widget build(BuildContext context) {
    return AnimationWidget(
        body: InkWell(
      onTap: (loadingVariable ?? false) ? () {} : action,
      child: Container(
        margin:
            margin ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: padding ?? const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: colors ?? Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Center(
          child: loadingVariable ?? false
              ? const SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(),
                )
              : TextWidget(
                  text: text ?? 'SIGN IN',
                  color: textColor ?? Theme.of(context).shadowColor,
                  fontWeight: fontWeight,
                  size: textSize,
                ),
        ),
      ),
    ));
  }
}
