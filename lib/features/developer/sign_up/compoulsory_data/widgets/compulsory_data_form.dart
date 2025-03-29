import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_label.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_regex.dart';


class CompulsoryDataForm extends StatefulWidget {
  const CompulsoryDataForm({super.key});

  @override
  State<CompulsoryDataForm> createState() => _CompulsoryDataFormState();
}

class _CompulsoryDataFormState extends State<CompulsoryDataForm> {
  final formKey = GlobalKey<FormState>();
  bool isObscurePassword = false;
  bool isObscureConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            const AppLabel(
              text: 'First Name',
            ),
            verticalSpace(8),
            AppTextFormField(
                hintText: "Enter first name",
                validator: (firstName) {
                  if (firstName!.isNullOrEmpty() ||
                      !AppRegex.isValidName(firstName)) {
                    return 'Please enter a valid name';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Enter last name'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'Enter last name',
                validator: (lastName) {
                  if (lastName!.isNullOrEmpty() ||
                      !AppRegex.isValidName(lastName)) {
                    return 'Please enter a valid name';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Email'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'Enter Email',
                validator: (email) {
                  if (email!.isNullOrEmpty() || !AppRegex.isValidEmail(email)) {
                    return 'Please enter a valid email';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Password'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'Password',
                isObscureText: isObscurePassword,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscurePassword = !isObscurePassword;
                    });
                  },
                  child: isObscurePassword
                      ?
                      //TODO: Add eye_closed
                      const Icon(
                          Icons.visibility,
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
                hintText: 'Confirm Password',
                isObscureText: isObscureConfirmPassword,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureConfirmPassword = !isObscureConfirmPassword;
                    });
                  },
                  child: isObscureConfirmPassword
                      ?
                      //TODO: Add eye_closed
                      const Icon(
                          Icons.visibility,
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
