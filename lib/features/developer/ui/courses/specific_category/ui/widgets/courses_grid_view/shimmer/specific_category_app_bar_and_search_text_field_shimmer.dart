import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../../core/theming/colors.dart';

class SpecificCategoryAppBarAndSearchShimmer extends StatelessWidget {
  const SpecificCategoryAppBarAndSearchShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Row(
            children: [
              shimmerBox(width: 40.w, height: 40.h, borderRadius: 8),
              const Spacer(),
              shimmerBox(width: 120.w, height: 24.h, borderRadius: 8),
              const Spacer(),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        shimmerBox(width: double.infinity, height: 50.h, borderRadius: 12),
      ],
    );
  }

  Widget shimmerBox({
    required double width,
    required double height,
    double borderRadius = 8,
  }) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.porcelain,
      highlightColor: ColorsManager.magnolia,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ColorsManager.pastelGrey,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
