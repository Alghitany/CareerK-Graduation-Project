import 'package:carrerk/features/authentication/change_password/logic/change_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/widgets/app_label.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/helpers/app_regex.dart';

class NewAndConfirmPassword extends StatefulWidget {
  const NewAndConfirmPassword({super.key});

  @override
  State<NewAndConfirmPassword> createState() => _NewAndConfirmPasswordState();
}

class _NewAndConfirmPasswordState extends State<NewAndConfirmPassword> {
  bool isObscureNewPassword = true;
  bool isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<ChangePasswordCubit>().formKey,
        child: Column(
          children: [
            const AppLabel(text: 'New Password'),
            verticalSpace(8),
            AppTextFormField(
                controller:
                    context.read<ChangePasswordCubit>().newPasswordController,
                hintText: 'New Password',
                isObscureText: isObscureNewPassword,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureNewPassword = !isObscureNewPassword;
                    });
                  },
                  child: isObscureNewPassword
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
                  if (!AppRegex.isValidPassword(password!)) {
                    return 'Please enter a valid password';
                  }
                  return null;
                }),
            verticalSpace(8),
            const AppLabel(text: 'Confirm Password'),
            verticalSpace(8),
            AppTextFormField(
                controller: context
                    .read<ChangePasswordCubit>()
                    .confirmPasswordController,
                hintText: 'Confirm Password',
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
                          .read<ChangePasswordCubit>()
                          .newPasswordController
                          .text,
                      confirmPassword!)) {
                    return "Password doesn't match";
                  }
                  return null;
                }),
          ],
        ));
  }
}
