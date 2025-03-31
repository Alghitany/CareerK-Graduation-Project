import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/sign_up/bio_and_skills/widgets/bio_and_skills_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class DeveloperSignUpBioAndSkillsScreen extends StatelessWidget {
  const DeveloperSignUpBioAndSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(32),
              const BioSkillsAndCVForm(),
              verticalSpace(36),
              AppTextButton(
                buttonText: 'Continue',
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
                onPressed: () {
                  //TODO: Check the validation of form fields and navigate
                  context.pushNamed(Routes.developerSignUpOptionalDataScreen);
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
