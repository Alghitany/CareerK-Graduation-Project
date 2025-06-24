import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../theming/colors.dart';

class DeveloperCoursesAndJobsTopBarShimmer extends StatelessWidget {
  const DeveloperCoursesAndJobsTopBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      color: ColorsManager.magnolia, // matches the original top bar background
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Row(
        children: [
          // Shimmering user name column
          Shimmer.fromColors(
            baseColor: ColorsManager.pastelGrey, // light grey base
            highlightColor: ColorsManager.ghostWhite, // subtle shimmer
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.porcelain,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  width: 100.w,
                  height: 14.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.porcelain,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Shimmering avatar
          Shimmer.fromColors(
            baseColor: ColorsManager.pastelGrey,
            highlightColor: ColorsManager.ghostWhite,
            child: Container(
              width: 56.w,
              height: 56.h,
              decoration: BoxDecoration(
                color: ColorsManager.porcelain,
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorsManager.lemonGrass,
                  width: 1.w,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
