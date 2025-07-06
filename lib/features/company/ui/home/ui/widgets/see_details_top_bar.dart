import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';

class SeeDetailsTopBar extends StatefulWidget {
  const SeeDetailsTopBar({super.key});

  @override
  State<SeeDetailsTopBar> createState() => _SeeDetailsTopBarState();
}

class _SeeDetailsTopBarState extends State<SeeDetailsTopBar> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppBackIcon(),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'Details',
              style: AppTextStyles.font24RangoonGreenPoppinsSemiBold,
            ),
          ),
        ),
      ],
    );
  }
}
