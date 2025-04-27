import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class NameAndTitle extends StatelessWidget {
  const NameAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Ali Mohamed',
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
        verticalSpace(8),
        Text(
          'Frontend developer',
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        )
      ],
    );
  }
}
