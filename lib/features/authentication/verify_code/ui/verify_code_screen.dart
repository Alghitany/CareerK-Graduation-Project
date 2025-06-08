import 'package:carrerk/features/authentication/reset_password/logic/reset_password_cubit.dart';
import 'package:carrerk/features/authentication/verify_code/logic/verify_code_cubit.dart';
import 'package:carrerk/features/authentication/verify_code/ui/widgets/otp_input.dart';
import 'package:carrerk/features/authentication/verify_code/ui/widgets/resend_and_didnt_get_code.dart';
import 'package:carrerk/features/authentication/verify_code/ui/widgets/verify_code_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_back_icon.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../data/model/verify_code_request_body.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

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
                    'Verify Code',
                    style: AppTextStyles.font24DunePoppinsMedium,
                  ),
                  verticalSpace(16),
                  Image.asset('assets/images/verify_code.png'),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Column(
                  children: [
                    Text(
                      'Please enter the code we just sent to email\nexample@gmail.com',
                      style: AppTextStyles.font13RockBluePoppinsMedium,
                      textAlign: TextAlign.center,
                    ),
                    verticalSpace(24),
                    const OtpInput(),
                    verticalSpace(16),
                    ResendAndDidntGetCode(
                      onResend: () {
                        debugPrint("Resend button clicked!");
                        // TODO: Call API to resend OTP
                      },
                    ),
                    verticalSpace(40),
                    AppTextButton(
                      buttonText: 'Verify',
                      textStyle: AppTextStyles.font14WhitePoppinsMedium,
                      onPressed: () {
                        validateThenDoVerifyCode(context);
                      },
                    ),
                  ],
                ),
              ),
              const VerifyCodeBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoVerifyCode(BuildContext context) {
    final cubit = context.read<VerifyCodeCubit>();
    if (cubit.formKey.currentState?.validate() ?? false) {
      cubit.emitVerifyCodeStates(
        VerifyCodeRequestBody(
          email: context.read<ResetPasswordCubit>().emailController.text,
          otp: cubit.otpController.text,
        ),
      );
    }
  }
}
