import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    super.key,
    required this.text,
    this.fontWeight,
    this.color,
    this.fontSize,
  });
  String text;
  FontWeight? fontWeight;
  Color? color;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color == null ? color = Colors.white : color = color,
        fontWeight: fontWeight,
      ),
    );
  }
}
