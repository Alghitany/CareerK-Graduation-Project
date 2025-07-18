import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_check_box_and_agree_text.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/developer_sign_up_cubit.dart';
import 'widgets/developer_compulsory_data_form.dart';

class DeveloperSignUpCompulsoryDataScreen extends StatelessWidget {
  const DeveloperSignUpCompulsoryDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
          //TODO: Modify spaces when validation return message appear "Overflow"
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Developer',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(16),
              Text(
                'Please enter the following data',
                style: AppTextStyles.font15LiverPoppinsMedium,
              ),
              verticalSpace(32),
              const DeveloperCompulsoryDataForm(),
              verticalSpace(32),
              const AppCheckBoxAndAgreeText(),
              verticalSpace(24),
              AppTextButton(
                  buttonText: 'Next Step',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
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
        .compulsoryDataFormKey
        .currentState!
        .validate()) {
      context.pushNamed(Routes.developerSignUpFillProfileScreen);
    }
  }
}
