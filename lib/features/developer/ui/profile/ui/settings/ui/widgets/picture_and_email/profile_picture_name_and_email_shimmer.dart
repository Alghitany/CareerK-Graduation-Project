import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProfilePictureNameAndEmailShimmer extends StatelessWidget {
  const ProfilePictureNameAndEmailShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey.withOpacity(0.5),
          highlightColor: ColorsManager.porcelain.withOpacity(0.8),
          child: CircleAvatar(
            radius: 60.r,
            backgroundColor: ColorsManager.porcelain,
          ),
        ),
        verticalSpace(8),
        Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey.withOpacity(0.5),
          highlightColor: ColorsManager.porcelain.withOpacity(0.8),
          child: Container(
            width: 100.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: ColorsManager.porcelain,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
        verticalSpace(8),
        Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey.withOpacity(0.5),
          highlightColor: ColorsManager.porcelain.withOpacity(0.8),
          child: Container(
            width: 150.w,
            height: 14.h,
            decoration: BoxDecoration(
              color: ColorsManager.porcelain,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
      ],
    );
  }
}
