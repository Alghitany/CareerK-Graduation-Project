import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceNameBookmarkBudgetAndTime extends StatefulWidget {
  const ServiceNameBookmarkBudgetAndTime({super.key});

  @override
  State<ServiceNameBookmarkBudgetAndTime> createState() =>
      _ServiceNameBookmarkBudgetAndTimeState();
}

class _ServiceNameBookmarkBudgetAndTimeState
    extends State<ServiceNameBookmarkBudgetAndTime> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Need UI designer to create 12 Screens',
                style: AppTextStyles.font20RangoonGreenPoppinsSemiBold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isBookmark = !isBookmark;
                });
              },
              child: SvgPicture.asset(
                isBookmark
                    ? 'assets/svgs/bookmark_filled.svg'
                    : 'assets/svgs/bookmark_outlined.svg',
                height: 18.h,
                width: 15.w,
              ),
            )
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
              '\$200',
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
                        'Reposted',
                        style: AppTextStyles.font14DunePoppinsMedium,
                      ),
                      Text(
                        '12 mins ago',
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
