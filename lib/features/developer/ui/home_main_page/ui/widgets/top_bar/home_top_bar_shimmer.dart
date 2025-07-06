import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../core/theming/colors.dart';

class HomeTopBarShimmer extends StatelessWidget {
  const HomeTopBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.pastelGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120.w,
                height: 20.h,
                color: ColorsManager.ghostWhite,
              ),
              SizedBox(height: 8.h),
              Container(
                width: 180.w,
                height: 16.h,
                color: ColorsManager.ghostWhite,
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 30.w,
            height: 30.h,
            color: ColorsManager.ghostWhite,
          ),
          SizedBox(width: 16.w),
          Container(
            width: 32.w,
            height: 32.h,
            color: ColorsManager.ghostWhite,
          ),
        ],
      ),
    );
  }
}
