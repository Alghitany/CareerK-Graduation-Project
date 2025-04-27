import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

Widget companySendToApplicantsSuccessfulScreen(BuildContext context) {
  return AlertDialog(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.r),
    ),
    content: SizedBox(
      height: 320.h,
      width: 343.w,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.w, 24.h, 0.w, 0.h),
        child: Column(
          children: [
            Image.asset("assets/images/verified_successfully.png",
                height: 100.h, width: 100.w),
            verticalSpace(16),
            Text(
              "Successful!",
              style: AppTextStyles.font20BlackPoppinsMedium,
            ),
            verticalSpace(16),
            Text(
              textAlign: TextAlign.center,
              "Notification has been sent\nto applicant.",
              style: AppTextStyles.font14BlackPoppinsMedium,
            ),
            verticalSpace(16),
            AppTextButton(
              buttonText: 'Next',
              buttonHeight: 53.h,
              buttonWidth: 185.w,
              textStyle: AppTextStyles.font14WhitePoppinsMedium,
              onPressed: () {
                context.pushNamed(Routes.companyHomeMainPageScreen);
              },
            )
          ],
        ),
      ),
    ),
  );
}
