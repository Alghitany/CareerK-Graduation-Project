import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfileTopBarShimmer extends StatelessWidget {
  const ProfileTopBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: Container(
            height: 17.h,
            width: 24.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ),
        const Spacer(),
        Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: Container(
            height: 120.r, // Twice the radius of 60
            width: 120.r,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),
        Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: Container(
            height: 24.h,
            width: 24.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ),
      ],
    );
  }
}
