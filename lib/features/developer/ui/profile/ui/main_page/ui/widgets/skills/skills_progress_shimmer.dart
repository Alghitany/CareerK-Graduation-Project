import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SkillsProgressShimmer extends StatelessWidget {
  const SkillsProgressShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Shimmer for "Skills" Title
        Align(
          alignment: Alignment.centerLeft,
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              width: 120.w,
              height: 20.h,
              color: Colors.grey,
            ),
          ),
        ),
        verticalSpace(18),
        // Shimmer Grid
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.w,
            childAspectRatio: 90 / 115,
          ),
          itemCount: 6, // Showing shimmer for 6 placeholders
          itemBuilder: (context, index) {
            return Container(
              width: 93.w,
              height: 138.h,
              decoration: BoxDecoration(
                color: ColorsManager.softPeach,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Circle shimmer for percent indicator
                  Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      width: 60.w,
                      height: 60.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  verticalSpace(16),
                  // Rectangle shimmer for skill name
                  Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    child: Container(
                      width: 50.w,
                      height: 14.h,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
