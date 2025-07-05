import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CourseOverviewTabShimmer extends StatelessWidget {
  const CourseOverviewTabShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        children: [
          buildShimmerRow(),
          verticalSpace(16),
          buildShimmerRow(),
          verticalSpace(16),
          buildShimmerRow(),
          verticalSpace(16),
          Align(
            alignment: Alignment.centerLeft,
            child: shimmerContainer(width: 150.w, height: 20.h),
          ),
          verticalSpace(8),
          Align(
            alignment: Alignment.centerLeft,
            child: shimmerContainer(width: double.infinity, height: 60.h),
          ),
          verticalSpace(16),
          Align(
            alignment: Alignment.bottomCenter,
            child: shimmerContainer(width: double.infinity, height: 48.h),
          )
        ],
      ),
    );
  }

  Widget buildShimmerRow() {
    return Row(
      children: [
        shimmerContainer(width: 28.w, height: 28.h, shape: BoxShape.circle),
        horizontalSpace(8),
        shimmerContainer(width: 120.w, height: 16.h),
      ],
    );
  }

  Widget shimmerContainer({
    required double width,
    required double height,
    BoxShape shape = BoxShape.rectangle,
  }) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.pastelGrey,
      highlightColor: ColorsManager.mercury,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ColorsManager.pastelGrey,
          shape: shape,
          borderRadius:
              shape == BoxShape.rectangle ? BorderRadius.circular(8.r) : null,
        ),
      ),
    );
  }
}
