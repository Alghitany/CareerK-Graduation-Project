import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_check_box_and_agree_text.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/sign_up/compoulsory_data/widgets/developer_compulsory_data_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                    //TODO: Check Validation that data is correct to go to next page
                    context.pushNamed(Routes.developerSignUpFillProfileScreen);
                  })
            ],
          ),
        ),
      )),
    );
  }
}
