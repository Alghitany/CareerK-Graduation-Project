import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppLabel extends StatelessWidget {
  final String text;
  final AlignmentGeometry? alignment;
  final TextStyle? textStyle;
  final double? width;
  final TextOverflow? overflow;

  const AppLabel(
      {super.key,
      required this.text,
      this.alignment,
      this.textStyle,
      this.width,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: SizedBox(
        width: width?.w,
        child: Text(
          text,
          style: textStyle ?? AppTextStyles.font16LiverPoppinsRegular,
          overflow: overflow,
        ),
      ),
    );
  }
}
