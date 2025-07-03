import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class JobDescription extends StatelessWidget {
  final String? description;

  const JobDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Job Description:',
          style: AppTextStyles.font20BlackPoppinsMedium,
        ),
        verticalSpace(8),
        Text(
          description?.trim().isNotEmpty == true
              ? description!
              : 'No description provided.',
          style: AppTextStyles.font14DunePoppinsRegular,
        ),
      ],
    );
  }
}
