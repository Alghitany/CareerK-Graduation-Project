import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppDropDownMenu extends StatefulWidget {
  final String hintText;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final String? errorMessage;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<DropdownMenuItem<String>>? items;
  final EdgeInsetsGeometry? contentPadding;
  final bool? isDense;
  final double? borderRadius;
  final Color? borderColor;
  final Widget? suffixIcon;
  const AppDropDownMenu({
    super.key,
    required this.hintText,
    this.hintStyle,
    this.controller,
    this.errorMessage,
    this.onChanged,
    this.validator,
    this.items,
    this.contentPadding,
    this.isDense,
    this.borderRadius,
    this.borderColor,
    this.suffixIcon});

  @override
  State<AppDropDownMenu> createState() => _AppDropDownMenuState();
}

class _AppDropDownMenuState extends State<AppDropDownMenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        hint: Text(
            widget.hintText,
            style: widget.hintStyle ?? AppTextStyles.font14MercuryPoppinsMedium
        ),
        value: null,
        onChanged: widget.onChanged ??(String? newValue) {
          widget.controller?.text = newValue!;
        },
        validator: widget.validator ?? (value) {
          if (value.isNullOrEmpty()) {
            return widget.errorMessage;
          }
          return null;
        },
        items: widget.items,
        decoration: InputDecoration(
          contentPadding: widget.contentPadding ??
          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          isDense: widget.isDense ?? true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              color: widget.borderColor ?? ColorsManager.blueBell,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              color: widget.borderColor ?? ColorsManager.blueBell,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            borderSide: BorderSide(
              color: widget.borderColor ?? ColorsManager.blueBell,
            ),
          ),
        ),
        icon: widget.suffixIcon ?? SvgPicture.asset('assets/svgs/keyboard_arrow_down.svg'));
  }
}
