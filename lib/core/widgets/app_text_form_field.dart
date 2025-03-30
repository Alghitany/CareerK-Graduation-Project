import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final bool? readOnly;
  final void Function()? onTap;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.readOnly,
    this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly ?? false,
      onTap: onTap ?? (){},
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorsManager.blueBell,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(8.0)
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
            borderSide: const BorderSide(
              color: ColorsManager.blueBell,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(8.0)
        ),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(8.0)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.3,
            ),
            borderRadius: BorderRadius.circular(8.0)
        ),
        hintStyle: hintStyle ?? AppTextStyles.font14MercuryPoppinsMedium,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: AppTextStyles.font14BlackPoppinsMedium,
      validator: (value){
        return validator(value);
      },
    );
  }
}
