import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatelessWidget {
  final int? fieldsNumber;
  final double? fieldWidth;
  final double? fieldHeight;
  final TextStyle? textStyle;
  final Color? borderColor;
  final double? cursorWidth;
  final double? cursorHeight;
  final Color? cursorColor;
  const OtpInput({
    super.key,
    this.fieldsNumber,
    this.fieldWidth,
    this.fieldHeight,
    this.textStyle,
    this.borderColor,
    this.cursorWidth,
    this.cursorHeight,
    this.cursorColor});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        length: fieldsNumber ?? 4,
        defaultPinTheme: PinTheme(
          width: fieldWidth ?? 72.w,
          height: fieldHeight ?? 72.h,
          textStyle: textStyle ?? AppTextStyles.font24BlackPoppinsSemiBold,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.3,
              color: borderColor ?? ColorsManager.blueBell
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        showCursor: true,
        cursor: Container(
          width: cursorWidth ?? 1.7,
          height: cursorHeight ?? 30,
          color: cursorColor ?? Colors.black,
        ),
        //TODO: Need to be linked with the button
        onCompleted: (pin) => debugPrint("Entered PIN: $pin"),
      ),
    );
  }
}
