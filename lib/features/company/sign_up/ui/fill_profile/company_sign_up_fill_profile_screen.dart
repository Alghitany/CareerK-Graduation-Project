import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_edit_profile_picture.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';

import '../../logic/company_sign_up_cubit.dart';
import 'widgets/company_fill_profile_form.dart';

class CompanySignUpFillProfileScreen extends StatelessWidget {
  const CompanySignUpFillProfileScreen({super.key});

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
                verticalSpace(32),
                AppEditProfilePicture(
                  onImageSelected: (imageFile) {
                    context
                        .read<CompanySignupCubit>()
                        .setProfileImage(imageFile);
                  },
                ),
                verticalSpace(48),
                const CompanyFillProfileForm(),
                verticalSpace(56),
                AppTextButton(
                    buttonText: 'Continue',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      //TODO: Check input validations adn go to next page
                      validateThenGoNext(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenGoNext(BuildContext context) {
    if (context
        .read<CompanySignupCubit>()
        .fillProfileFormKey
        .currentState!
        .validate()) {
      context.pushNamed(Routes.companySignUpEnterLocationScreen);
    }
  }
}
