import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberOfJobsAndApplicants extends StatelessWidget {
  const NumberOfJobsAndApplicants({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 64, right: 18),
      child: SizedBox(
        height: 77.h,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Jobs',
                  style: AppTextStyles.font16GranitePoppinsMedium,
                ),
                verticalSpace(8),
                Text(
                  '4 ',
                  style: AppTextStyles.font20BlackPoppinsMedium,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              child: const VerticalDivider(
                color: ColorsManager.pastelGrey,
              ),
            ),
            Column(
              children: [
                Text(
                  'Followers',
                  style: AppTextStyles.font16GranitePoppinsMedium,
                ),
                verticalSpace(8),
                Text(
                  '100 ',
                  style: AppTextStyles.font20BlackPoppinsMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
