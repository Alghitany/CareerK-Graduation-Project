import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class RememberMeForgetPassword extends StatelessWidget {
  const RememberMeForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;

    return Row(
      children: [
        AppCheckBox(
          isChecked: isChecked,
        ),
        horizontalSpace(2),
        Text(
          'Remember Me',
          style: AppTextStyles.font15LiverPoppinsMedium,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.resetPasswordScreen);
          },
          child: Text(
            'Forgot Password?',
            style: AppTextStyles.font15GlaucousPoppinsSemiBold,
          ),
        )
      ],
    );
  }
}
