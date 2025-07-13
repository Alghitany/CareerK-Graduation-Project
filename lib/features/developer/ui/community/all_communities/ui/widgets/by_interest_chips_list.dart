import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/styles.dart';
import '../../../../../../../core/widgets/app_choice_chip.dart';

class ByInterestChipsList extends StatelessWidget {
  const ByInterestChipsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AppChoiceChip(
              options: const ["Design", "Marketing", "Testing", "Backend"],
              selectedTextStyle: AppTextStyles.font14WhiteMulishBold,
              unSelectedTextStyle: AppTextStyles.font14DuneMulishBold)
        ],
      ),
    );
  }
}
