import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_label.dart';
import '../../logic/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscurePassword = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            const AppLabel(text: 'Email'),
            verticalSpace(3),
            AppTextFormField(
                hintText: 'email@email.com',
                validator: (email) {
                  if (email.isNullOrEmpty() || !AppRegex.isValidEmail(email!)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                controller: context.read<LoginCubit>().emailController),
            verticalSpace(2),
            const AppLabel(text: 'Password'),
            verticalSpace(3),
            AppTextFormField(
                hintText: '•••••••••',
                controller: context.read<LoginCubit>().passwordController,
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
                  return null;
                })
          ],
        ));
  }
}
