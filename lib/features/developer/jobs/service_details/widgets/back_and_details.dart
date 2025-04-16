import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';

class BackAndDetails extends StatelessWidget {
  const BackAndDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppBackIcon(),
        horizontalSpace(16),
        Text(
          'Details',
          style: AppTextStyles.font24RangoonGreenPoppinsSemiBold,
        ),
      ],
    );
  }
}
