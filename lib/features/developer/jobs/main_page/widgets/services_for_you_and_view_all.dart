import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicesForYouAndViewAll extends StatelessWidget {
  const ServicesForYouAndViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Services for you',
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
