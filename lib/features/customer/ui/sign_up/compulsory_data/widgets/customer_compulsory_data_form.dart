import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/app_regex.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/widgets/app_label.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';

class CustomerCompulsoryDataForm extends StatefulWidget {
  const CustomerCompulsoryDataForm({super.key});

  @override
  State<CustomerCompulsoryDataForm> createState() =>
      _CustomerCompulsoryDataFormState();
}

class _CustomerCompulsoryDataFormState
    extends State<CustomerCompulsoryDataForm> {
  final formKey = GlobalKey<FormState>();
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            const AppLabel(text: 'Name'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'John A.Wick',
                validator: (name) {
                  if (name!.isNullOrEmpty() || !AppRegex.isValidName(name)) {
                    return 'Please enter a valid name';
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Email'),
            verticalSpace(8),
            AppTextFormField(
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
                  if (!AppRegex.isValidPassword(password!)) {
                    return 'Please enter a valid password';
                  }
                  return null;
                }),
            verticalSpace(16),
            const AppLabel(text: 'Confirm Password'),
            verticalSpace(8),
            AppTextFormField(
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
                  return null;

                  //TODO: Check if the confirm password = new password
                })
          ],
        ));
  }
}
