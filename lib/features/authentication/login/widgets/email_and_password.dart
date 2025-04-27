import 'package:carrerk/core/helpers/app_regex.dart';
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_label.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  final formKey = GlobalKey<FormState>();
  bool isObscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            const AppLabel(text: 'Email'),
            verticalSpace(12),
            AppTextFormField(
                hintText: 'email@email.com',
                validator: (email) {
                  if (email.isNullOrEmpty() || !AppRegex.isValidEmail(email!)) {
                    return 'Please enter a valid email';
                  }
                }),
            verticalSpace(16),
            const AppLabel(text: 'Password'),
            verticalSpace(12),
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
                  if (password.isNullOrEmpty() ||
                      !AppRegex.isValidPassword(password!)) {
                    return 'Please enter a valid password';
                  }
                })
          ],
        ));
  }
}
