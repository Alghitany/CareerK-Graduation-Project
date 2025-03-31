import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/authentication/login/widgets/divider_or_divider.dart';
import 'package:carrerk/features/authentication/login/widgets/email_and_password.dart';
import 'package:carrerk/features/authentication/login/widgets/login_with.dart';
import 'package:carrerk/features/authentication/login/widgets/remember_me_forget_password.dart';
import 'package:carrerk/features/authentication/widgets/dont_have_an_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                    padding: EdgeInsets.fromLTRB(16.0.w, 16.0.h, 16.0.w, 0.h),
                    child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Login to your Account',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(24),
              const EmailAndPassword(),
              verticalSpace(8),
              const RememberMeForgetPassword(),
              verticalSpace(38),
              AppTextButton(
                  buttonText: 'Login',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    //Todo We should know which user kind it will be so i can redirect him to his own home page
                    context.pushNamed(Routes.loginScreen);
                  }),
              verticalSpace(24),
              const DividerOrDivider(),
              verticalSpace(16),
              LoginWith(
                onPressed: () {
                  //TODO: Apply Sign in with Google
                },
                text: 'Google',
                icon: 'assets/svgs/google.svg',
              ),
              verticalSpace(8),
              LoginWith(
                onPressed: () {
                  //TODO: Apply sign in with facebook
                },
                text: 'Facebook',
                icon: 'assets/svgs/facebook.svg',
              ),
              verticalSpace(8),
              LoginWith(
                onPressed: () {
                  //TODO: Apply sign in with github
                },
                text: 'GitHub',
                icon: 'assets/svgs/github.svg',
              ),
              verticalSpace(32),
              const DontHaveAnAccountText(),
            ],
                    ),
                  ),
          )),
    );
  }
}
