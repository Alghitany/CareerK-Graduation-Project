import 'package:carrerk/core/widgets/app_choice_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class MainPageChoiceChips extends StatelessWidget {
  const MainPageChoiceChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AppChoiceChip(
              options: const ["UI", "Graphic Design", "Frontend", "Backend"],
              selectedTextStyle: AppTextStyles.font14WhiteMulishBold,
              unSelectedTextStyle: AppTextStyles.font14DuneMulishBold),
        ],
      ),
    );
  }
}
