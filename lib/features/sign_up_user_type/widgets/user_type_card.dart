import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserTypeCard extends StatelessWidget {

  final String routeName;
  final double? containerHeight;
  final double? containerWidth;
  final double? borderRadius;
  final Color? borderColor;
  final double? contentTopPadding;
  final double? contentLeftPadding;
  final String icon;
  final double? iconHeight;
  final double? iconWidth;
  final String text;
  final TextStyle? textStyle;

  const UserTypeCard({
    super.key,
    required this.routeName,
    this.containerHeight,
    this.containerWidth,
    this.borderRadius,
    this.borderColor,
    this.contentTopPadding,
    this.contentLeftPadding,
    required this.icon,
    this.iconHeight,
    this.iconWidth,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(routeName);
      },
      child: Container(
        height: containerHeight ?? 114.h,
        width: containerWidth ?? 155.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 16),
          border: Border.all(color: borderColor ?? ColorsManager.cadetBlue),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: iconHeight ?? 24.h,
              width: iconWidth ?? 24.w,
            ),
            verticalSpace(4),
            Text(
              text,
              style: textStyle ?? AppTextStyles.font14GranitePoppinsRegular
            ),
          ],
        ),
      ),
    );
  }
}
