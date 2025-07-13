import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ContactButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonText: 'Contact',
      backgroundColor: Colors.white,
      textStyle: AppTextStyles.font14WhitePoppinsMedium.copyWith(
        color: ColorsManager.primaryWildBlueYonder,
      ),
      borderColor: ColorsManager.primaryWildBlueYonder,
      onPressed: onPressed,
    );
  }
}
