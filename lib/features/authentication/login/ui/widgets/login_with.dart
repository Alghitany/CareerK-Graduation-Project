import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginWith extends StatelessWidget {
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? disabledBackgroundColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? borderRadius;
  final double? contentWidth;
  final double? contentHeight;
  final String text;
  final TextStyle? textStyle;
  final String icon;

  const LoginWith(
      {super.key,
      this.onPressed,
      this.backgroundColor,
      this.disabledBackgroundColor,
      this.buttonWidth,
      this.buttonHeight,
      this.borderRadius,
      this.contentWidth,
      this.contentHeight,
      required this.text,
      this.textStyle,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorsManager.softPeach,
          disabledBackgroundColor:
              disabledBackgroundColor ?? ColorsManager.softPeach,
          minimumSize: Size(buttonWidth ?? double.infinity, buttonHeight ?? 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8),
          ),
        ),
        child: SizedBox(
          width: contentWidth ?? 180.w,
          height: contentHeight ?? 48.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Login with $text",
                  style: textStyle ?? AppTextStyles.font14BlackPoppinsRegular),
              SvgPicture.asset(icon, height: 24.h, width: 24.w)
            ],
          ),
        ));
  }
}
