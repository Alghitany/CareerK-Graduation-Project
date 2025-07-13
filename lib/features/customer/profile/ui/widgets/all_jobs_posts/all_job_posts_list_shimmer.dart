import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class AllJobPostsListShimmer extends StatelessWidget {
  const AllJobPostsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const baseColor = ColorsManager.mercury;
    const highlightColor = ColorsManager.softPeach;

    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Shimmer.fromColors(
            baseColor: baseColor,
            highlightColor: highlightColor,
            child: Container(
              width: 100.w,
              height: 16.h,
              color: baseColor,
            ),
          ),
        ),
        verticalSpace(12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: Shimmer.fromColors(
                baseColor: baseColor,
                highlightColor: highlightColor,
                child: Container(
                  height: 80.h,
                  decoration: BoxDecoration(
                    color: baseColor,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: ColorsManager.pastelGrey),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
