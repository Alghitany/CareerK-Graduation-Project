import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../core/theming/colors.dart';

class JobsNumberShimmer extends StatelessWidget {
  const JobsNumberShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.softPeach,
      child: Container(
        width: 80.w,
        height: 24.h,
        decoration: BoxDecoration(
          color: ColorsManager.mercury,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}

class ApplicantsNumberShimmer extends StatelessWidget {
  const ApplicantsNumberShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.softPeach,
      child: Container(
        width: 100.w,
        height: 24.h,
        decoration: BoxDecoration(
          color: ColorsManager.mercury,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }
}
