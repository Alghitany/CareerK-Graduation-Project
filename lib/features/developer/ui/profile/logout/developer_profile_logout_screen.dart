import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/styles.dart';


Widget developerProfileLogoutScreen(BuildContext context) {
  //TODO: Maybe use better dialog
  // Commit that i pushed to development and didn't push here first
  return AlertDialog(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.r),
        topRight: Radius.circular(16.r),
      ),
    ),
    content: SizedBox(
      height: 197.h,
      width: 375.w,
      child: Column(
        children: [
          verticalSpace(32),
          Text(
            'Logout',
            style: AppTextStyles.font24BlackPoppinsSemiBold,
          ),
          verticalSpace(4),
          Text(
            'Are you sure you want to log out?',
            style: AppTextStyles.font14BlackPoppinsRegular,
          ),
          verticalSpace(32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextButton(
                onPressed: () {
                  context.pushNamed(Routes.developerProfileSettingsScreen);
                },
                buttonText: 'Cancel',
                textStyle: AppTextStyles.font16WaikawaGreyPoppinsRegular,
                buttonWidth: 110.w,
                buttonHeight: 20.h,
                borderRadius: 16.r,
                borderColor: ColorsManager.duskyBlue,
                backgroundColor: Colors.white,
              ),
              AppTextButton(
                onPressed: () {
                  //TODO: logout of app clear stack shared preferences
                  context.pushNamed(Routes.loginScreen);
                },
                buttonText: 'Yes, Logout',
                textStyle: AppTextStyles.font16WhitePoppinsRegular,
                buttonWidth: 110.w,
                buttonHeight: 20.h,
                borderRadius: 16.r,
                backgroundColor: ColorsManager.duskyBlue,
              ),
            ],
          )
        ],
      ),
    ),
  );
}
