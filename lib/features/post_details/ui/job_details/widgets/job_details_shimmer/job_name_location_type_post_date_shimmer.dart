import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class JobNameLocationTypePostDateShimmer extends StatelessWidget {
  const JobNameLocationTypePostDateShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left side
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            shimmerBox(width: 140.w, height: 18.h),
            verticalSpace(8),
            shimmerBox(width: 120.w, height: 16.h),
            verticalSpace(16),
            Row(
              children: [
                shimmerBox(width: 94.w, height: 30.h),
                horizontalSpace(8),
                shimmerBox(width: 94.w, height: 30.h),
              ],
            )
          ],
        ),
        const Spacer(),
        // Right side
        Padding(
          padding: EdgeInsets.fromLTRB(0.w, 0.h, 16.0.w, 0.h),
          child: Column(
            children: [
              shimmerBox(width: 72.w, height: 72.h, radius: 8.r),
              verticalSpace(4),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  shimmerBox(width: 16.w, height: 16.h, radius: 4.r),
                  horizontalSpace(4),
                  shimmerBox(width: 60.w, height: 12.h),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget shimmerBox({
    required double width,
    required double height,
    double radius = 8,
  }) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.softPeach,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ColorsManager.mercury,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
