import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';

class RelatedCoursesAndViewAll extends StatelessWidget {
  const RelatedCoursesAndViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.0.w, 0.0.h, 16.w, 0.h),
      child: Row(
        children: [
          Text('Related Courses',
              style: AppTextStyles.font18CharcoalGreyPoppinsRegular),
          const Spacer(),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.developerCoursesRelatedCoursesScreen);
            },
            child: Row(
              children: [
                Text(
                  'View ALL',
                  style: AppTextStyles.font12DuskyBluePoppinsSemiBold,
                ),
                horizontalSpace(4),
                SvgPicture.asset(
                  'assets/svgs/keyboard_arrow_right.svg',
                  height: 10.h,
                  width: 5.w,
                  colorFilter: const ColorFilter.mode(
                      ColorsManager.duskyBlue, BlendMode.srcIn),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
