import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfileIconsShimmer extends StatelessWidget {
  const ProfileIconsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const baseColor = ColorsManager.mercury;
    const highlightColor = ColorsManager.softPeach;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Row(
        children: [
          const Spacer(),
          shimmerCircle(),
          horizontalSpace(24),
          shimmerCircle(),
          horizontalSpace(24),
          shimmerCircle(),
          const Spacer(),
        ],
      ),
    );
  }

  Widget shimmerCircle() {
    return Container(
      width: 56.w,
      height: 56.h,
      decoration: BoxDecoration(
        color: ColorsManager.mercury,
        borderRadius: BorderRadius.circular(32.r),
      ),
    );
  }
}
