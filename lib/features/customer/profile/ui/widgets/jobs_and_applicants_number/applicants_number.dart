import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ApplicantsNumber extends StatelessWidget {
  final String applicantsText;

  const ApplicantsNumber({super.key, required this.applicantsText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Applicants',
          style: AppTextStyles.font16GranitePoppinsMedium,
        ),
        verticalSpace(8),
        Text(
          applicantsText,
          style: AppTextStyles.font20BlackPoppinsMedium,
        ),
      ],
    );
  }
}
