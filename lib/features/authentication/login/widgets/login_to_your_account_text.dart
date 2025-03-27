import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class LoginToYourAccountText extends StatelessWidget {
  const LoginToYourAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login to your Account',
      style: AppTextStyles.font24DunePoppinsMedium,
    );
  }
}
