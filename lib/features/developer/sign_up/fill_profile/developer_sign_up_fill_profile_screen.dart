import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/sign_up/fill_profile/widgets/fill_profile_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/app_edit_profile_picture.dart';

class DeveloperSignUpFillProfileScreen extends StatelessWidget {
  const DeveloperSignUpFillProfileScreen({super.key});

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
                  'Fill Your Profile',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(24),
                const AppEditProfilePicture(),
                verticalSpace(24),
                const FillProfileForm(),
                verticalSpace(40),
                AppTextButton(
                  buttonText: 'Continue',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed: () {
                    //TODO: Check the validation of form fields and navigate
                    context
                        .pushNamed(Routes.developerSignUpEnterLocationScreen);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
