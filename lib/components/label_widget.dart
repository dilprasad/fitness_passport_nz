import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({
    Key? key,
    this.text,
    this.fontStyle,
    this.textColor,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.height,
  }) : super(key: key);

  final String? text;
  final TextStyle? fontStyle;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text == null ? '' : text!,
      style: fontStyle!.copyWith(
        color: textColor!,
      ),
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      textScaleFactor: 1,
    );
  }
}
