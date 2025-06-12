import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobNameLocationTypePostDate extends StatelessWidget {
  const JobNameLocationTypePostDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Backend Engineer',
              style: AppTextStyles.font16RangoonGreenPoppinsSemiBold,
            ),
            verticalSpace(8),
            Text(
              'London, United Kingdom',
              style: AppTextStyles.font15LiverPoppinsMedium,
            ),
            verticalSpace(16),
            Row(
              children: [
                Container(
                  width: 94.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                          color: ColorsManager.primaryWildBlueYonder)),
                  child: Center(
                    child: Text(
                      'Full time',
                      style: AppTextStyles.font14DuskyBluePoppinsMedium,
                    ),
                  ),
                ),
                horizontalSpace(8),
                Container(
                  width: 94.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                          color: ColorsManager.primaryWildBlueYonder)),
                  child: Center(
                    child: Text(
                      'Remotely',
                      style: AppTextStyles.font14DuskyBluePoppinsMedium,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.fromLTRB(0.w, 0.h, 16.0.w, 0.h),
          child: Column(
            children: [
              Image.asset(
                'assets/images/recommended_job.png',
                height: 72.h,
                width: 72.w,
              ),
              verticalSpace(4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0.w, 4.h, 0.w, 0.h),
                    child: SvgPicture.asset(
                      'assets/svgs/clock.svg',
                      height: 16.h,
                      width: 16.w,
                      colorFilter: const ColorFilter.mode(
                          ColorsManager.granite, BlendMode.srcIn),
                    ),
                  ),
                  horizontalSpace(2),
                  Text(
                    'Reposted \n12 mins ago',
                    style: AppTextStyles.font10GranitePoppinsMedium,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
