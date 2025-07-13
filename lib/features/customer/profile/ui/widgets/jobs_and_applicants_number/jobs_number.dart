import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class JobsNumber extends StatelessWidget {
  final String jobsText;

  const JobsNumber({super.key, required this.jobsText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Services',
          style: AppTextStyles.font16GranitePoppinsMedium,
        ),
        verticalSpace(8),
        Text(
          jobsText,
          style: AppTextStyles.font20BlackPoppinsMedium,
        ),
      ],
    );
  }
}
