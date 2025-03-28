import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/app_label.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class NewAndConfirmPassword extends StatefulWidget {
  const NewAndConfirmPassword({super.key});

  @override
  State<NewAndConfirmPassword> createState() => _NewAndConfirmPasswordState();
}

class _NewAndConfirmPasswordState extends State<NewAndConfirmPassword> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          children: [
            const AppLabel(text: 'New Password'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'New Password',
                isObscureText: isObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  child: isObscureText ?
                  const Icon(
                    Icons.visibility,
                  ):
                  Container(
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
                validator: (password){
                  if(password!.isNullOrEmpty() || !AppRegex.isValidPassword(password)){
                    return 'Please enter a valid password';
                  }
                }
            ),
            verticalSpace(8),
            const AppLabel(text: 'Confirm Password'),
            verticalSpace(8),
            AppTextFormField(
                hintText: 'Confirm Password',
                isObscureText: isObscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  child: isObscureText ?
                  const Icon(
                    Icons.visibility,
                  ):
                  Container(
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
                validator: (confirmPassword){
                  //TODO: Check if the confirm password = new password
                }
            )
          ],
        )
    );
  }
}
