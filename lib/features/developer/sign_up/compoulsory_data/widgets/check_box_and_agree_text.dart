import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_check_box.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CheckBoxAndAgreeText extends StatelessWidget {
  const CheckBoxAndAgreeText({super.key});

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
                style: AppTextStyles.font14PlantationPoppinsMedium,
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
