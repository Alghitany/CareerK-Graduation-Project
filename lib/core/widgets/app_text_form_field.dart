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
  final FormFieldValidator<String>? validator;
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
  final void Function(FormFieldState<String> state)? onFormFieldReady;

  const AppTextFormField({
    super.key,
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
    this.maxLength,
    this.onFormFieldReady,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      builder: (state) {
        onFormFieldReady?.call(state); // ✅ Pass state to parent
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height?.h ?? 48.h,
              width: width?.w ?? double.infinity,
              child: TextFormField(
                controller: controller,
                readOnly: readOnly ?? false,
                onTap: onTap,
                keyboardType: keyboardType,
                minLines: minLines,
                maxLines: maxLines ?? 1,
                maxLength: maxLength,
                obscureText: isObscureText ?? false,
                onChanged: (value) {
                  onChanged?.call(value);
                  state.didChange(value);
                },
                style: inputTextStyle ?? AppTextStyles.font14BlackPoppinsMedium,
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: contentPadding ??
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                  filled: true,
                  fillColor: backgroundColor ?? Colors.white,
                  hintText: hintText,
                  hintStyle:
                  hintStyle ?? AppTextStyles.font14MercuryPoppinsMedium,
                  prefixIcon: prefixIcon,
                  suffixIcon: suffixIcon,
                  enabledBorder: enabledBorder ??
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(borderRadius ?? 8.0),
                        borderSide: const BorderSide(
                          color: ColorsManager.blueBell,
                          width: 1.3,
                        ),
                      ),
                  focusedBorder: focusedBorder ??
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(borderRadius ?? 8.0),
                        borderSide: const BorderSide(
                          color: ColorsManager.blueBell,
                          width: 1.3,
                        ),
                      ),
                  errorBorder: errorBorder ??
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(borderRadius ?? 8.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.3,
                        ),
                      ),
                  focusedErrorBorder: focusedErrorBorder ??
                      OutlineInputBorder(
                        borderRadius:
                        BorderRadius.circular(borderRadius ?? 8.0),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 1.3,
                        ),
                      ),
                ),
              ),
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
              child: state.errorText == null
                  ? const SizedBox(height: 0)
                  : Padding(
                padding: EdgeInsets.only(top: 6.h, left: 8.w),
                child: Text(
                  state.errorText!,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12.sp,
                    height: 1.2,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
