import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/theming/colors.dart';

class ByInterestCommunityListShimmer extends StatelessWidget {
  const ByInterestCommunityListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: ColorsManager.pastelGrey,
            highlightColor: ColorsManager.iron,
            child: Container(
              width: 160.w,
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                color: ColorsManager.softPeach,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Circle icon placeholder
                  Container(
                    width: 36.w,
                    height: 36.w,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  // Title placeholder
                  Container(
                    height: 14.h,
                    width: 100.w,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8.h),
                  // Member count placeholder
                  Container(
                    height: 12.h,
                    width: 60.w,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
