import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/onboarding/widgets/careerk_text.dart';
import 'package:carrerk/features/onboarding/widgets/dont_have_an_account_text.dart';
import 'package:carrerk/features/onboarding/widgets/enter_your_journey_text.dart';
import 'package:carrerk/features/onboarding/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  verticalSpace(24.5),
                  const Center(
                      child: CareerkText(),
                  ),
                  verticalSpace(24.5),
                  Image.asset(
                   'assets/images/on_boarding.png'
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Column(
                  children: [
                    const WelcomeText(),
                    const EnterYourJourneyText(),
                    verticalSpace(42),
                    AppTextButton(
                        buttonText: 'Login',
                        textStyle: AppTextStyles.font14WhitePoppinsMedium,
                        onPressed: (){
                          context.pushNamed(Routes.loginScreen);
                        }
                    ),
                  ],
                ),
              ),
              verticalSpace(28),
              const DontHaveAnAccountText(),
            ],
          )
      ),
    );
  }
}
