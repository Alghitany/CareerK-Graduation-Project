import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class RecommendedJobsAndSeeAll extends StatelessWidget {
  const RecommendedJobsAndSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Recommended Jobs',
          style: AppTextStyles.font20DunePoppinsMedium,
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.developerJobsMainPageScreen);
          },
          child: Row(
            children: [
              Text(
                'SEE ALL',
                style: AppTextStyles.font12DuskyBluePoppinsSemiBold,
              ),
              horizontalSpace(5),
              SvgPicture.asset(
                'assets/svgs/keyboard_arrow_right.svg',
                fit: BoxFit.contain,
                height: 10.h,
                width: 7.w,
                colorFilter: const ColorFilter.mode(
                    ColorsManager.duskyBlue, BlendMode.srcIn),
              ),
            ],
          ),
        )
      ],
    );
  }
}
