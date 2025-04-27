import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final String? buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;
  final Color? borderColor;
  final double? borderWidth;
  final Widget? child;

  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      this.buttonHeight,
      this.buttonText,
      this.textStyle,
      required this.onPressed,
      this.borderColor,
      this.borderWidth,
      this.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8),
                side: BorderSide(
                  color: borderColor ?? Colors.transparent,
                  // Set your border color
                  width: borderWidth ?? 1.0,
                ),
              ),
            ),
            backgroundColor: WidgetStateProperty.all(
                backgroundColor ?? ColorsManager.primaryWildBlueYonder),
            padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h,
            )),
            minimumSize: WidgetStateProperty.all(Size(
                buttonWidth?.w ?? double.infinity, buttonHeight?.h ?? 53.h))),
        onPressed: onPressed,
        child: child ??
            Text(
              buttonText!,
              style: textStyle,
            ));
  }
}
