import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../../core/theming/colors.dart';

class CourseReviewsTabShimmer extends StatelessWidget {
  const CourseReviewsTabShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.pastelGrey.withValues(alpha: (0.5 * 255)),
      highlightColor: ColorsManager.aquaHaze,
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            shimmerBox(height: 16.h, width: 150.w),
            verticalSpace(8),
            Row(
              children: [
                shimmerBox(height: 24.h, width: 30.w),
                horizontalSpace(8),
                shimmerBox(height: 24.h, width: 100.w),
              ],
            ),
            verticalSpace(20),
            ...List.generate(3, (index) => reviewItemShimmer()),
          ],
        ),
      ),
    );
  }

  Widget shimmerBox({required double height, required double width}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
    );
  }

  Widget shimmerBoxFlexible({required double height}) {
    return Expanded(
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }

  Widget reviewItemShimmer() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          shimmerBox(height: 40.h, width: 40.w), // Avatar
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                shimmerBox(height: 14.h, width: 120.w),
                // Name
                verticalSpace(4),
                shimmerBox(height: 14.h, width: 60.w),
                // Date
                verticalSpace(4),
                shimmerBox(height: 18.h, width: double.infinity),
                // Stars (will stretch)
                verticalSpace(8),
                shimmerBox(height: 40.h, width: double.infinity),
                // Comment
              ],
            ),
          ),
        ],
      ),
    );
  }
}
