import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Pinput(
        length: 4,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        defaultPinTheme: PinTheme(
          width: 72.w,
          height: 72.h,
          textStyle: AppTextStyles.font24BlackPoppinsSemiBold,
          decoration: BoxDecoration(
            border: Border.all(width: 1.3, color: ColorsManager.blueBell),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        showCursor: true,
        cursor: Container(
          width: 1.7.w,
          height: 30.h,
          color: Colors.black,
        ),
        //TODO: Need to be linked with the button
        onCompleted: (pin) => debugPrint("Entered PIN: $pin"),
      ),
    );
  }
}
