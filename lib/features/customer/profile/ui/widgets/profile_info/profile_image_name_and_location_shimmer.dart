import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfileImageNameAndLocationShimmer extends StatelessWidget {
  const ProfileImageNameAndLocationShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const baseColor = ColorsManager.mercury;
    const highlightColor = ColorsManager.softPeach;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Column(
        children: [
          // Circle image shimmer
          Container(
            width: 104.w,
            height: 104.h,
            decoration: const BoxDecoration(
              color: baseColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 34.h),
          // Company name shimmer
          Container(
            width: 140.w,
            height: 16.h,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
          SizedBox(height: 8.h),
          // City shimmer
          Container(
            width: 100.w,
            height: 14.h,
            decoration: BoxDecoration(
              color: baseColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ],
      ),
    );
  }
}
