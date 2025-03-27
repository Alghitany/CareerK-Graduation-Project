import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Welcome!',
        style: AppTextStyles.font32BlackPoppinsSemiBold,
      ),
    );
  }
}
