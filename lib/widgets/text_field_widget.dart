import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'animation_widget.dart';

class TextFieldWidget extends StatefulWidget {
  double? paddingTop;
  double? paddingBottom;
  double? paddingRight;
  double? paddingLeft;
  TextEditingController? textEditingController;
  Color? lineColor;
  TextInputType? textInputType;
  TextAlign? textAlign;
  String? hintText;
  TextFieldWidget(
      {super.key,
      this.lineColor,
      this.paddingBottom,
      this.paddingLeft,
      this.paddingRight,
      this.paddingTop,
      this.textEditingController,
      this.textInputType,
      this.textAlign,
      this.hintText});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimationWidget(
        body: Container(
      margin: EdgeInsets.only(
        top: widget.paddingTop ?? 8.0,
        bottom: widget.paddingBottom ?? 8.0,
        left: widget.paddingLeft ?? 8.0,
        right: widget.paddingRight ?? 8.0,
      ),
      child: TextField(
        keyboardType: widget.textInputType,
        textAlign: widget.textAlign ?? TextAlign.start,
        style: Theme.of(context).textTheme.bodyLarge,
        controller: widget.textEditingController,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.bodyLarge,
          // labelStyle: getFontStyle(color: Colors.amber, bold: true),
          // prefixStyle: getFontStyle(color: Colors.amber, bold: true),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.lineColor ?? Theme.of(context).buttonColor,
                width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: widget.lineColor ?? Theme.of(context).buttonColor,
                width: 2),
          ),
        ),
      ),
    ));
  }
}
