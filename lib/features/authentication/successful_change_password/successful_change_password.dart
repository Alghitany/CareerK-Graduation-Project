import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';

class SuccessfulChangePasswordScreen extends StatelessWidget {
  const SuccessfulChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(12),
              Image.asset(
                'assets/images/successful_change_password.png'
              ),
              verticalSpace(36),
              Text(
                  'You have successfully change password.\nPlease use the new password when Sign in.',
                  style: AppTextStyles.font14DunePoppinsMedium,
                  textAlign: TextAlign.center,),
              verticalSpace(52),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: AppTextButton(
                    buttonText: 'Ok',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: (){
                      context.pushNamedAndRemoveUntil(
                          Routes.loginScreen,
                          predicate: (route) => false
                      );
                    }),
              )
            ],
          )
      ),
    );
  }
}
