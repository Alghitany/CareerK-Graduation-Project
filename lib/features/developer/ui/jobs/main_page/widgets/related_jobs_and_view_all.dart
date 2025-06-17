import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';


class RelatedJobsAndViewAll extends StatelessWidget {
  const RelatedJobsAndViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Related Jobs',
          style: AppTextStyles.font18DunePoppinsMedium,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.developerJobsSearchScreen);
          },
          child: Row(
            children: [
              Text(
                'View All',
                style: AppTextStyles.font12DuskyBluePoppinsSemiBold,
              ),
              horizontalSpace(4),
              SvgPicture.asset(
                'assets/svgs/keyboard_arrow_right.svg',
                height: 10.h,
                width: 5.w,
                colorFilter: const ColorFilter.mode(
                    ColorsManager.duskyBlue, BlendMode.srcIn),
              )
            ],
          ),
        )
      ],
    );
  }
}
