import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class NameAndTitleShimmer extends StatelessWidget {
  const NameAndTitleShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: Container(
            height: 20.h,
            width: 140.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
        verticalSpace(8),
        Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: Container(
            height: 20.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
      ],
    );
  }
}
