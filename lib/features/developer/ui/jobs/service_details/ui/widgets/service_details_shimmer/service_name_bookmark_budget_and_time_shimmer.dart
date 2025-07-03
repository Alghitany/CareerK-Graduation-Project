import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ServiceNameBookmarkBudgetAndTimeShimmer extends StatelessWidget {
  const ServiceNameBookmarkBudgetAndTimeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Shimmer.fromColors(
                baseColor: ColorsManager.pastelGrey,
                highlightColor: ColorsManager.mercury,
                child: Container(
                  height: 48.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
            ),
            horizontalSpace(12),
            Shimmer.fromColors(
              baseColor: ColorsManager.pastelGrey,
              highlightColor: ColorsManager.mercury,
              child: Container(
                height: 18.h,
                width: 15.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.r),
                ),
              ),
            ),
          ],
        ),
        verticalSpace(16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Shimmer.fromColors(
              baseColor: ColorsManager.pastelGrey,
              highlightColor: ColorsManager.mercury,
              child: Container(
                height: 36.h,
                width: 33.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
            ),
            horizontalSpace(14),
            Shimmer.fromColors(
              baseColor: ColorsManager.pastelGrey,
              highlightColor: ColorsManager.mercury,
              child: Container(
                height: 20.h,
                width: 50.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: ColorsManager.pastelGrey,
                  highlightColor: ColorsManager.mercury,
                  child: Container(
                    height: 18.h,
                    width: 18.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ),
                horizontalSpace(8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: ColorsManager.pastelGrey,
                      highlightColor: ColorsManager.mercury,
                      child: Container(
                        height: 14.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ),
                    verticalSpace(8),
                    Shimmer.fromColors(
                      baseColor: ColorsManager.pastelGrey,
                      highlightColor: ColorsManager.mercury,
                      child: Container(
                        height: 14.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
