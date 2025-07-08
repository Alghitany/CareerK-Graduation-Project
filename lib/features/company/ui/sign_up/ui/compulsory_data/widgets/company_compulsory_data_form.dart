import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/widgets/app_label.dart';
import '../../../../../../../core/widgets/app_text_form_field.dart';
import '../../../logic/company_sign_up_cubit.dart';

class CompanyCompulsoryDataForm extends StatefulWidget {
  const CompanyCompulsoryDataForm({super.key});

  @override
  State<CompanyCompulsoryDataForm> createState() =>
      _CompanyCompulsoryDataFormState();
}

class _CompanyCompulsoryDataFormState extends State<CompanyCompulsoryDataForm> {
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<CompanySignupCubit>().compulsoryDataFormKey,
        child: Column(
          children: [
            const AppLabel(text: 'Company Name'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<CompanySignupCubit>().companyNameController,
                hintText: 'Toyota',
                validator: (companyName) {
                  if (companyName!.isNullOrEmpty() ||
                      !AppRegex.isValidName(companyName)) {
                    return 'Please enter a valid name';
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Email'),
            verticalSpace(8),
            AppTextFormField(
                controller: context.read<CompanySignupCubit>().emailController,
                hintText: 'example@email.com',
                validator: (email) {
                  if (!AppRegex.isValidEmail(email)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Password'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<CompanySignupCubit>().passwordController,
                hintText: '•••••••••',
                isObscureText: isObscurePassword,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscurePassword = !isObscurePassword;
                    });
                  },
                  child: isObscurePassword
                      ? Container(
                          width: 32.w,
                          height: 12.h,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/svgs/visibility_on.svg',
                            width: 26.w,
                            height: 23.h,
                            fit: BoxFit.contain,
                            colorFilter: const ColorFilter.mode(
                                ColorsManager.geyser, BlendMode.srcIn),
                          ),
                        )
                      : Container(
                          width: 32.w,
                          height: 12.h,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/svgs/visibility_off.svg',
                            width: 23.w,
                            height: 15.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                ),
                validator: (password) {
                  if (password!.isNullOrEmpty() ||
                      !AppRegex.isValidPassword(password)) {
                    return 'Please enter a valid password';
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Confirm Password'),
            verticalSpace(8),
            AppTextFormField(
                controller: context
                    .read<CompanySignupCubit>()
                    .confirmPasswordController,
                hintText: '•••••••••',
                isObscureText: isObscureConfirmPassword,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureConfirmPassword = !isObscureConfirmPassword;
                    });
                  },
                  child: isObscureConfirmPassword
                      ? Container(
                          width: 32.w,
                          height: 12.h,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/svgs/visibility_on.svg',
                            width: 26.w,
                            height: 23.h,
                            fit: BoxFit.contain,
                            colorFilter: const ColorFilter.mode(
                                ColorsManager.geyser, BlendMode.srcIn),
                          ),
                        )
                      : Container(
                          width: 32.w,
                          height: 12.h,
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            'assets/svgs/visibility_off.svg',
                            width: 23.w,
                            height: 15.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                ),
                validator: (confirmPassword) {
                  if (!AppRegex.doPasswordsMatch(
                      context
                          .read<CompanySignupCubit>()
                          .passwordController
                          .text,
                      confirmPassword!)) {
                    return "Password doesn't match";
                  }
                  return null;
                })
          ],
        ));
  }
}
