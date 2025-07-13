import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../core/widgets/app_choice_chip.dart';

class ByInterestChipsList extends StatelessWidget {
  final List<String> tags;
  final ValueChanged<String> onSelected;

  const ByInterestChipsList({
    super.key,
    required this.tags,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AppChoiceChip(
            options: tags,
            selectedTextStyle: AppTextStyles.font14WhiteMulishBold,
            unSelectedTextStyle: AppTextStyles.font14DuneMulishBold,
            initialSelectedIndex: 0,
            onSelected: (index) {
              final selectedTag = tags[index];
              onSelected(selectedTag);
            },
          ),
        ],
      ),
    );
  }
}
