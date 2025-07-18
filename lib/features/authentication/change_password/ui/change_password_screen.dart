import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/authentication/change_password/logic/change_password_cubit.dart';
import 'package:carrerk/features/authentication/change_password/ui/widgets/change_password_bloc_listener.dart';
import 'package:carrerk/features/authentication/change_password/ui/widgets/new_and_confirm_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_back_icon.dart';
import '../../reset_password/logic/reset_password_cubit.dart';
import '../../verify_code/logic/verify_code_cubit.dart';
import '../data/models/change_password_request_body.dart';

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
                      validateThenDoChangePassword(context);
                    },
                  ),
                  const ChangePasswordBlocListener(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  void validateThenDoChangePassword(BuildContext context) {
    if (context.read<ChangePasswordCubit>().formKey.currentState!.validate()) {
      context.read<ChangePasswordCubit>().emitChangePasswordStates(
          ChangePasswordRequestBody(
              email: context.read<ResetPasswordCubit>().emailController.text,
              otp: context.read<VerifyCodeCubit>().otpController.text,
              password: context
                  .read<ChangePasswordCubit>()
                  .newPasswordController
                  .text,
              confirmPassword: context
                  .read<ChangePasswordCubit>()
                  .confirmPasswordController
                  .text));
    }
  }
}
