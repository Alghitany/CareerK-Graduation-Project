import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';

class VerifiedAlertDialog extends StatelessWidget {
  const VerifiedAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      content: SizedBox(
        height: 295.h,
        width: 343.w,
        child: Padding(
          padding: EdgeInsets.only(top: 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset("assets/images/verified_successfully.png",
                  height: 100.h, width: 100.w),
              verticalSpace(24),
              Text(
                "Verified Successfully",
                style: AppTextStyles.font20BlackPoppinsMedium,
              ),
              verticalSpace(36),
              AppTextButton(
                buttonText: 'Next',
                buttonHeight: 53.h,
                buttonWidth: 185.w,
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
                onPressed: () {
                  context.pushNamed(Routes.changePasswordScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
