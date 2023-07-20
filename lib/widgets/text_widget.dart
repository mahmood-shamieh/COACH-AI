import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color? color;
  FontWeight? fontWeight;
  double? size;
  TextAlign? textAlign;
  double? letterSpacing;
  TextWidget({
    super.key,
    required this.text,
    this.fontWeight,
    this.size,
    this.color,
    this.textAlign,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.left,
      text: TextSpan(
        text: text,
        style: GoogleFonts.cairo(
            fontSize: size ?? 18,
            fontWeight: fontWeight ?? FontWeight.normal,
            color: color ?? Theme.of(context).primaryColor,
            letterSpacing: letterSpacing),
      ),
    );
  }
}
