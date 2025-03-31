import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/authentication/change_password/widgets/new_and_confirm_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_back_icon.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0.w, 16.0.h, 16.0.w, 8.0.h),
                  child: const AppBackIcon(),
                ),
                Text(
                  'Change Password',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(16),
                Image.asset('assets/images/change_password.png'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  Text(
                    'Your new password must be different\nfrom previously used passwords.',
                    style: AppTextStyles.font13RockBluePoppinsMedium,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(24),
                  const NewAndConfirmPassword(),
                  verticalSpace(32),
                  AppTextButton(
                    buttonText: 'Create New Password',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      //TODO: All fields should be valid
                      context.pushNamed(Routes.successfulChangePasswordScreen);
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
