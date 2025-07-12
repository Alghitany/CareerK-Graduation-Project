import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ForYouListShimmer extends StatelessWidget {
  const ForYouListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(width: 10.w),
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: ColorsManager.silverChalice.withOpacity(0.4),
          highlightColor: ColorsManager.porcelain,
          child: Container(
            width: 140.w,
            height: 161.h,
            decoration: BoxDecoration(
              color: ColorsManager.softPeach,
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circle Placeholder
                Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: const BoxDecoration(
                    color: ColorsManager.duskyBlue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 8.h),

                // Community name placeholder
                Container(
                  height: 16.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.blueBell,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                SizedBox(height: 4.h),

                // Member count placeholder
                Container(
                  height: 14.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.waikawaGrey,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
