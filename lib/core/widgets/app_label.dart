import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppLabel extends StatelessWidget {
  final String text;
  const AppLabel({
    super.key,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: AppTextStyles.font16LiverPoppinsRegular,
      ),
    );
  }
}
