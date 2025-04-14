import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBackIcon extends StatelessWidget {
  final String? iconPath;
  final AlignmentGeometry? alignment;
  final double? width;
  final double? height;
  final Color? borderColor;
  final BoxFit? fit;

  const AppBackIcon(
      {super.key,
      this.alignment,
      this.width,
      this.height,
      this.borderColor,
      this.fit,
      this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          context.pop();
        },
        child: Container(
          width: width?.w ?? 32.w,
          height: height?.h ?? 32.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: borderColor ?? ColorsManager.mercury)),
          child: SvgPicture.asset(
            iconPath ?? 'assets/svgs/left_arrow.svg',
            fit: fit ?? BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
