import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';

class ServiceNameBookmarkBudgetAndTime extends StatelessWidget {
  final String serviceId;
  final String serviceTitle;
  final String budget;
  final String timeLabel;
  final String timeValue;

  const ServiceNameBookmarkBudgetAndTime({
    super.key,
    required this.serviceId,
    required this.serviceTitle,
    required this.budget,
    required this.timeLabel,
    required this.timeValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                serviceTitle,
                style: AppTextStyles.font20RangoonGreenPoppinsSemiBold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // <-- Use your BlocBuilder bookmark here instead of GestureDetector
            DeveloperJobBookmarkBlocBuilder(postId: serviceId),
          ],
        ),
        verticalSpace(16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/svgs/coin.svg',
              height: 36.h,
              width: 33.w,
              colorFilter: const ColorFilter.mode(
                  ColorsManager.duskyBlue, BlendMode.srcIn),
            ),
            horizontalSpace(14),
            Text(
              budget,
              style: AppTextStyles.font20DunePoppinsMedium,
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(4.0.w, 4.0.h, 4.0.w, 0.0.h),
                  child: SvgPicture.asset(
                    'assets/svgs/clock.svg',
                    height: 18.h,
                    width: 18.w,
                    colorFilter: const ColorFilter.mode(
                      ColorsManager.granite,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0.w, 0.0.h, 16.w, 0.0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        timeLabel,
                        style: AppTextStyles.font14DunePoppinsMedium,
                      ),
                      Text(
                        timeValue,
                        style: AppTextStyles.font14DunePoppinsMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
