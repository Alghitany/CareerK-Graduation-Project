import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/routing/routes.dart';


class DontHaveAnAccountText extends StatelessWidget {
  const DontHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Don\'t have an account?',
        style: AppTextStyles.font14IronSideGreyPoppinsMedium,
        children: [
          TextSpan(
            text: " Sign up",
            style: AppTextStyles.font14SecondaryWildBlueYonderPoppinsSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signUpUserTypeScreen);
              },
          ),
        ],
      ),
    );
  }
}
