import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class NameAndTitle extends StatelessWidget {
  final String name;
  final String title;

  const NameAndTitle({super.key, required this.name, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
        verticalSpace(8),
        Text(
          title,
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        )
      ],
    );
  }
}
