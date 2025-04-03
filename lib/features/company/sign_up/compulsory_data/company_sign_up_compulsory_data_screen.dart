

import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_check_box_and_agree_text.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/company_compulsory_data_form.dart';

class CompanySignUpCompulsoryDataScreen extends StatelessWidget {
  const CompanySignUpCompulsoryDataScreen({super.key});

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
                  'Company',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(16),
                Text(
                  'Please enter the following data',
                  style: AppTextStyles.font15LiverPoppinsMedium,
                ),
                verticalSpace(32),
                const CompanyCompulsoryDataForm(),
                verticalSpace(16),
                const AppCheckBoxAndAgreeText(),
                verticalSpace(40),
                AppTextButton(
                    buttonText: 'Next step',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      //TODO: Check that all inputs are valid then navigate to next page
                      context.pushNamed(Routes.companySignUpFillProfileScreen);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
