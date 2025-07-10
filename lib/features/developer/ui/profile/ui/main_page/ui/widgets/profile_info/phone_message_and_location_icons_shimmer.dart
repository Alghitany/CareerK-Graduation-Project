import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class PhoneMessageAndLocationIconsShimmer extends StatelessWidget {
  const PhoneMessageAndLocationIconsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        shimmerCircleIcon(),
        SizedBox(width: 24.w),
        shimmerCircleIcon(),
        SizedBox(width: 24.w),
        shimmerCircleIcon(),
        const Spacer(),
      ],
    );
  }

  Widget shimmerCircleIcon() {
    return Shimmer.fromColors(
      baseColor: ColorsManager.ghostWhite,
      highlightColor: ColorsManager.mercury,
      child: Container(
        width: 56.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32.r),
          border: Border.all(
            color: ColorsManager.blueBerry,
            width: 1,
          ),
        ),
      ),
    );
  }
}
