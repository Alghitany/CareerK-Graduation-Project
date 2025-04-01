import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/features/customer/sign_up/fill_profile/widgets/fill_profile_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_back_icon.dart';
import '../../../../core/widgets/app_edit_profile_picture.dart';
import '../../../../core/widgets/app_text_button.dart';

class CustomerSignUpFillProfileScreen extends StatelessWidget {
  const CustomerSignUpFillProfileScreen({super.key});

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
                verticalSpace(8),
                Text(
                  'Fill Your Profile',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(16),
                const AppEditProfilePicture(),
                verticalSpace(16),
                const FillProfileForm(),
                verticalSpace(32),
                AppTextButton(
                    buttonText: 'Continue',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      //TODO: Check input validations adn go to next page
                      context
                          .pushNamed(Routes.companyHomeMainPageScreen);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}