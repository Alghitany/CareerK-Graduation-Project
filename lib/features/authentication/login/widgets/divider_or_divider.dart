import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividerOrDivider extends StatelessWidget {
  const DividerOrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: ColorsManager.lemonGrass,
            thickness: 1,
          ),
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w), // Space between dividers
            child:Text(
              'Or',
              style: AppTextStyles.font14BlackPoppinsMedium
            )
        ),
        const Expanded(
          child: Divider(
            color: ColorsManager.lemonGrass,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
