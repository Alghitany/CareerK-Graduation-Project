import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_regex.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formState = GlobalKey();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0.w, 16.0.h, 16.0.w, 8.0.h),
                  child: const AppBackIcon(),
                ),
                Text(
                  'Reset Password',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(16),
                Image.asset('assets/images/reset_password.png'),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  Text(
                    'We will email you\na link to reset your password',
                    style: AppTextStyles.font13RockBluePoppinsMedium,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(24),
                  Form(
                    key: formState,
                    child: AppTextFormField(
                        hintText: 'email@email.com',
                        validator: (email) {
                          if (email.isNullOrEmpty() ||
                              !AppRegex.isValidEmail(email!)) {
                            return 'Please enter a valid email';
                          }
                        }),
                  ),
                  verticalSpace(44),
                  AppTextButton(
                      buttonText: 'Send Code',
                      textStyle: AppTextStyles.font14WhitePoppinsMedium,
                      onPressed: () {
                        context.pushNamed(Routes.verifyCodeScreen);
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
