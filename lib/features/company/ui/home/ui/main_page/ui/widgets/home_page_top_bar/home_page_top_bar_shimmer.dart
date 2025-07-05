import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../core/theming/colors.dart';

class HomePageTopBarShimmer extends StatelessWidget {
  const HomePageTopBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 28.h, 12.w, 0.h),
      child: Row(
        children: [
          Shimmer.fromColors(
            baseColor: ColorsManager.pastelGrey,
            highlightColor: ColorsManager.porcelain,
            child: CircleAvatar(
              radius: 28.r,
              backgroundColor: ColorsManager.pastelGrey,
            ),
          ),
          horizontalSpace(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.pastelGrey,
                highlightColor: ColorsManager.porcelain,
                child: Container(
                  width: 120.w,
                  height: 16.h,
                  color: ColorsManager.pastelGrey,
                ),
              ),
              verticalSpace(4),
              Shimmer.fromColors(
                baseColor: ColorsManager.pastelGrey,
                highlightColor: ColorsManager.porcelain,
                child: Container(
                  width: 80.w,
                  height: 12.h,
                  color: ColorsManager.pastelGrey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Shimmer.fromColors(
            baseColor: ColorsManager.pastelGrey,
            highlightColor: ColorsManager.porcelain,
            child: Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: ColorsManager.pastelGrey,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
