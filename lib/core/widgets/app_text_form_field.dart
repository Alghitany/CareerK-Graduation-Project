import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final bool? readOnly;
  final void Function()? onTap;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final int? minLines;
  final int? maxLines;
  final double? borderRadius;
  final double? height;
  final double? width;
  final int? maxLength;

  const AppTextFormField(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.errorBorder,
      this.focusedErrorBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.controller,
      required this.validator,
      this.readOnly,
      this.onTap,
      this.keyboardType,
      this.onChanged,
      this.minLines,
      this.maxLines,
      this.borderRadius,
      this.height,
      this.width,
      this.prefixIcon,
      this.maxLength});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height?.h ?? 40.h,
      width: width?.w ?? double.infinity.h,
      child: TextFormField(
        controller: controller,
        readOnly: readOnly ?? false,
        onChanged: onChanged,
        onTap: onTap,
        keyboardType: keyboardType,
        minLines: minLines,
        maxLines: maxLines ?? 1,
        maxLength: maxLength,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsManager.blueBell,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius ?? 8.0)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsManager.blueBell,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius ?? 8.0)),
          errorBorder: errorBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius ?? 8.0)),
          focusedErrorBorder: focusedErrorBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(borderRadius ?? 8.0)),
          hintStyle: hintStyle ?? AppTextStyles.font14MercuryPoppinsMedium,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          fillColor: Colors.white,
          filled: true,
        ),
        obscureText: isObscureText ?? false,
        style: AppTextStyles.font14BlackPoppinsMedium,
        validator: (value) {
          return validator(value);
        },
      ),
    );
  }
}
