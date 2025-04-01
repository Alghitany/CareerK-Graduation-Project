import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../helpers/spacing.dart';
import '../theming/styles.dart';
import 'app_check_box.dart';

class AppCheckBoxAndAgreeText extends StatelessWidget {
  const AppCheckBoxAndAgreeText({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    return Row(
      children: [
        AppCheckBox(isChecked: isChecked),
        horizontalSpace(8),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextStyles.font14RangoonGreenPoppinsMedium,
            children: [
              const TextSpan(text: "I agree with the "),
              TextSpan(
                text: "privacy policy",
                style: AppTextStyles.font14BlueJayPoppinsMedium,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    //TODO: Add ur privacy and policy
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}