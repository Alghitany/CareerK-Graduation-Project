import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_check_box_and_agree_text.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/customer/sign_up/compulsory_data/widgets/compulsory_data_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerSignUpCompulsoryDataScreen extends StatelessWidget {
  const CustomerSignUpCompulsoryDataScreen({super.key});

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
                  'Customer',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(16),
                Text(
                  'Please enter the following data',
                  style: AppTextStyles.font15LiverPoppinsMedium,
                ),
                verticalSpace(32),
                const CompulsoryDataForm(),
                verticalSpace(16),
                const AppCheckBoxAndAgreeText(),
                verticalSpace(40),
                AppTextButton(
                    buttonText: 'Next Step',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      //TODO: Check that all inputs are valid then navigate to next page
                      context.pushNamed(Routes.customerSignUpFillProfileScreen);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
