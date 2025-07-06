import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/routes.dart';
import '../../logic/developer_sign_up_cubit.dart';
import 'widgets/optional_data_form.dart';

class DeveloperSignUpOptionalDataScreen extends StatelessWidget {
  const DeveloperSignUpOptionalDataScreen({super.key});

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
              Text(
                'Optional Info.',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              Text(
                'Press continue to skip',
                style: AppTextStyles.font15LiverPoppinsMedium,
              ),
              verticalSpace(12),
              const OptionalDataForm(),
              verticalSpace(28),
              AppTextButton(
                  buttonText: 'Continue',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    //TODO: Check Validation that data is correct to go to next page
                    validateThenGoNext(context);
                  })
            ],
          ),
        ),
      )),
    );
  }

  void validateThenGoNext(BuildContext context) {
    if (context
        .read<DeveloperSignupCubit>()
        .optionalDataFormKey
        .currentState!
        .validate()) {
      context.pushNamed(Routes.developerSignUpSelectedCourses);
    }
  }
}
