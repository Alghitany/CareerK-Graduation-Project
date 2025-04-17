import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoadmapsSuggestions extends StatelessWidget {
  const RoadmapsSuggestions({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Map<String, String>> roadmapItems = [
      {
        'icon': 'assets/svgs/community_card_icon.svg',
        'name': 'Frontend',
      },
      {
        'icon': 'assets/svgs/community_card_icon.svg',
        'name': 'Frontend',
      },
      {
        'icon': 'assets/svgs/community_card_icon.svg',
        'name': 'Frontend',
      },
      {
        'icon': 'assets/svgs/community_card_icon.svg',
        'name': 'Frontend',
      },
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: roadmapItems.map((item) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60.h,
              height: 60.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorsManager.chambray,
              ),
              child: Center(
                child: SvgPicture.asset(
                  item['icon']!,
                  width: 32.w,
                  height: 32.h,
                  colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn
                  ),
                ),
              ),
            ),
            verticalSpace(8),
            Text(
              item['name']!,
              textAlign: TextAlign.center,
              style: AppTextStyles.font14IronPoppinsMedium
            ),
          ],
        );
      }).toList(),
    );
  }
}
