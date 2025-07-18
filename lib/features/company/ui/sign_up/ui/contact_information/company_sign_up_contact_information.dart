import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/company_sign_up_cubit.dart';
import 'widgets/company_contact_information_form.dart';

class CompanySignUpContactInformationScreen extends StatelessWidget {
  const CompanySignUpContactInformationScreen({super.key});

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
                  'Contact Information',
                  style: AppTextStyles.font24DunePoppinsMedium,
                ),
                verticalSpace(32),
                const CompanyContactInformationForm(),
                verticalSpace(48),
                AppTextButton(
                    buttonText: 'Start Journey',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                    onPressed: () {
                      //TODO: Check Fields validations then navigate
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
    context.read<CompanySignupCubit>().signupCompany();
  }
}
