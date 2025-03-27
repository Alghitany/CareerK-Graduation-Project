import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_back_icon.dart';
import 'widgets/otp_input.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  'Verify Code',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(16),
                Image.asset('assets/images/verify_code.png'),
              ],
            ),
            verticalSpace(24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  Text(
                    'Please enter the code we just sent to email\nexample@gmail.com',
                    style: AppTextStyles.font14RockBluePoppinsMedium,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(24),
                  const OtpInput(),
                  verticalSpace(16),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
