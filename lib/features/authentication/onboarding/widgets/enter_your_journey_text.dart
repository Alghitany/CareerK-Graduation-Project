import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class EnterYourJourneyText extends StatelessWidget {
  const EnterYourJourneyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Enjoy Your Journey',
        style: AppTextStyles.font16RangoonGreenPoppinsRegular,
      ),
    );
  }
}
