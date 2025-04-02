import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../helpers/spacing.dart';
import '../routing/routes.dart';
import '../theming/styles.dart';
import 'app_text_form_field.dart';

class AppSearchTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final double? borderRadius;
  final Color? shadowColor;
  final double? blurRadius;
  final double? spreadRadius;
  final Offset? offset;



  const AppSearchTextFormField({
    super.key,
    this.contentPadding,
    this.height,
    this.width,
    this.backgroundColor,
    this.borderRadius,
    this.shadowColor,
    this.blurRadius,
    this.spreadRadius,
    this.offset});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: contentPadding ?? EdgeInsets.symmetric(horizontal: 15.w),
      height: height ?? 56.h,
      width: width ?? 345.w,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(borderRadius ?? 20),
        boxShadow: [
          BoxShadow(
            color: shadowColor ?? Colors.black.withOpacity(0.05),
            blurRadius: blurRadius ?? 10,
            spreadRadius: spreadRadius ?? 1,
            offset: offset ?? const Offset(0, 4),
          ),
        ],
      ),
      child: GestureDetector(
        onTap: (){
          context.pushNamed(Routes.developerSearchScreen);
        },
        child: Row(
          children: [
            SvgPicture.asset(
                "assets/svgs/search.svg",
                fit: BoxFit.contain,
                colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn)
            ),
            horizontalSpace(5),
            //TODO: Please someone center this field it is annoying i can't center it
            Expanded(
              child: AppTextFormField(
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  hintText: 'Search for...',
                  hintStyle: AppTextStyles.font16PastelGreyPoppinsMedium,
                  validator: (search){
                    //TODO: Add search validation if exist
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
