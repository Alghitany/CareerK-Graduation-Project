import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/styles.dart';
import '../../logic/developer_sign_up_cubit.dart';
import 'widgets/developer_enter_location_form.dart';

class DeveloperSignUpEnterLocationScreen extends StatelessWidget {
  const DeveloperSignUpEnterLocationScreen({super.key});

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
              verticalSpace(16),
              Text(
                'Enter the location',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(32),
              const DeveloperEnterLocationForm(),
              verticalSpace(56),
              AppTextButton(
                  buttonText: 'Continue',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    //TODO: Check Validation that data is correct to go to next page
                    validateThenGoNext(context);
                  }),
            ],
          ),
        ),
      )),
    );
  }

  void validateThenGoNext(BuildContext context) {
    if (context
        .read<DeveloperSignupCubit>()
        .locationFormKey
        .currentState!
        .validate()) {
      context.pushNamed(Routes.developerSignUpBioAndSkillsScreen);
    }
  }
}
