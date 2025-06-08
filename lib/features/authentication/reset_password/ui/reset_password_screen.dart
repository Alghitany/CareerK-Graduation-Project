import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:carrerk/features/authentication/reset_password/logic/reset_password_cubit.dart';
import 'package:carrerk/features/authentication/reset_password/ui/widgets/reset_password_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../data/models/reset_password_request_body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                      key: context.read<ResetPasswordCubit>().formKey,
                      child: AppTextFormField(
                          controller: context
                              .read<ResetPasswordCubit>()
                              .emailController,
                          hintText: 'email@email.com',
                          validator: (email) {
                            // if (email.isNullOrEmpty() ||
                            //     !AppRegex.isValidEmail(email!)) {
                            //   return 'Please enter a valid email';
                            // }
                          }),
                    ),
                    verticalSpace(44),
                    AppTextButton(
                        buttonText: 'Send Code',
                        textStyle: AppTextStyles.font14WhitePoppinsMedium,
                        onPressed: () {
                          validateThenDoResetPassword(context);
                        }),
                    const ResetPasswordBlocListener(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoResetPassword(BuildContext context) {
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().emitResetPasswordStates(
          ResetPasswordRequestBody(
              email: context.read<ResetPasswordCubit>().emailController.text));
    }
  }
}
