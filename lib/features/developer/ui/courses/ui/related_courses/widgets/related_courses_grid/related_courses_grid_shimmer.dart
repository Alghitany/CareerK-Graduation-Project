import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class RelatedCoursesGridShimmer extends StatelessWidget {
  const RelatedCoursesGridShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(bottom: 16.h),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.75,
      ),
      itemCount: 6,
      // Number of shimmer placeholders
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: ColorsManager.ghostWhite,
          highlightColor: ColorsManager.mercury,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 133.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.softPeach,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    height: 12.h,
                    width: double.infinity,
                    color: ColorsManager.softPeach,
                  ),
                ),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    height: 10.h,
                    width: 80.w,
                    color: ColorsManager.softPeach,
                  ),
                ),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Container(
                    height: 10.h,
                    width: 50.w,
                    color: ColorsManager.softPeach,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
