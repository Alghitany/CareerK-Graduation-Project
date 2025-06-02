import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/app_regex.dart';

class DeveloperCompulsoryDataForm extends StatefulWidget {
  const DeveloperCompulsoryDataForm({super.key});

  @override
  State<DeveloperCompulsoryDataForm> createState() =>
      _DeveloperCompulsoryDataFormState();
}

class _DeveloperCompulsoryDataFormState
    extends State<DeveloperCompulsoryDataForm> {
  final formKey = GlobalKey<FormState>();
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppLabel(
                      text: 'First Name',
                    ),
                    verticalSpace(8),
                    AppTextFormField(
                        width: 160,
                        hintText: "Micheal",
                        validator: (firstName) {
                          if (firstName!.isNullOrEmpty() ||
                              !AppRegex.isValidName(firstName)) {
                            return 'Please enter a valid name';
                          }
                        }),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppLabel(text: 'Last name'),
                    verticalSpace(8),
                    AppTextFormField(
                        width: 160,
                        hintText: 'Jordon',
                        validator: (lastName) {
                          if (lastName!.isNullOrEmpty() ||
                              !AppRegex.isValidName(lastName)) {
                            return 'Please enter a valid name';
                          }
                        }),
                  ],
                )
              ],
            ),
            verticalSpace(16),
            const AppLabel(text: 'Email'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'example@email.com',
                validator: (email) {
                  if (email!.isNullOrEmpty() || !AppRegex.isValidEmail(email)) {
                    return 'Please enter a valid email';
                  }
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
                  if (password!.isNullOrEmpty() ||
                      !AppRegex.isValidPassword(password)) {
                    return 'Please enter a valid password';
                  }
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
                  //TODO: Check if the confirm password = new password
                })
          ],
        ));
  }
}
