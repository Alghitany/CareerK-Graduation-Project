import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_edit_profile_picture.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/customer/ui/sign_up/logic/customer_sign_up_cubit.dart';
import 'package:carrerk/features/customer/ui/sign_up/ui/fill_profile/widgets/customer_fill_profile_form.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/customer_sign_up_cubit.dart';

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
                AppEditProfilePicture(
                  onImageSelected: (imageFile) {
                    context
                        .read<CustomerSignupCubit>()
                        .setProfileImage(imageFile);
                  },
                ),
                verticalSpace(16),
                const CustomerFillProfileForm(),
                verticalSpace(32),
                AppTextButton(
                    buttonText: 'Continue',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      //TODO: Check input validations adn go to next page
                      validateThenDoSignup(context);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    context.read<CustomerSignupCubit>().signupCustomer();
  }
}
