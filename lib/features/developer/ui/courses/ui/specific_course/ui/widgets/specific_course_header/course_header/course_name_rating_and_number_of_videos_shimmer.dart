import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CourseNameRatingAndNumberOfVideosShimmer extends StatelessWidget {
  const CourseNameRatingAndNumberOfVideosShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: ColorsManager.porcelain,
            highlightColor: ColorsManager.aquaHaze,
            child: Container(
              height: 16.h,
              width: 200.w,
              decoration: BoxDecoration(
                color: ColorsManager.softPeach,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
          verticalSpace(8),
          Row(
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.porcelain,
                highlightColor: ColorsManager.aquaHaze,
                child: Container(
                  height: 14.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.softPeach,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
              horizontalSpace(4),
              const Icon(
                Icons.star,
                color: ColorsManager.schoolBusYellow,
                size: 16,
              ),
              horizontalSpace(23),
              Shimmer.fromColors(
                baseColor: ColorsManager.porcelain,
                highlightColor: ColorsManager.aquaHaze,
                child: Container(
                  height: 14.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    color: ColorsManager.softPeach,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
