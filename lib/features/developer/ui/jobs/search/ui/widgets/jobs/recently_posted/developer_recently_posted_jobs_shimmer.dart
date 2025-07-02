import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../core/theming/colors.dart';

class DeveloperRecentlyPostedJobsShimmer extends StatelessWidget {
  const DeveloperRecentlyPostedJobsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      itemCount: 5,
      separatorBuilder: (_, __) => verticalSpace(16),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey,
          highlightColor: ColorsManager.softPeach,
          child: Container(
            decoration: BoxDecoration(
              color: ColorsManager.porcelain,
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsets.all(12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title shimmer
                Container(
                  height: 16.h,
                  width: 180.w,
                  color: ColorsManager.porcelain,
                ),
                verticalSpace(12),

                // Post date shimmer
                Container(
                  height: 12.h,
                  width: 120.w,
                  color: ColorsManager.porcelain,
                ),
                verticalSpace(12),

                // Budget shimmer
                Container(
                  height: 14.h,
                  width: 100.w,
                  color: ColorsManager.porcelain,
                ),
                verticalSpace(12),

                // Description shimmer
                Container(
                  height: 36.h,
                  width: double.infinity,
                  color: ColorsManager.porcelain,
                ),
                verticalSpace(12),

                // Keywords shimmer
                Row(
                  children: List.generate(3, (i) {
                    return Container(
                      height: 24.h,
                      width: 60.w,
                      margin: EdgeInsets.only(right: 8.w),
                      decoration: BoxDecoration(
                        color: ColorsManager.porcelain,
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
