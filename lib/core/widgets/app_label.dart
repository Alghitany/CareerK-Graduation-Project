import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppLabel extends StatelessWidget {
  final String text;
  final AlignmentGeometry? alignment;
  final TextStyle? textStyle;

  const AppLabel(
      {super.key, required this.text, this.alignment, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: Text(
        text,
        style: textStyle ?? AppTextStyles.font16LiverPoppinsRegular,
      ),
    );
  }
}
