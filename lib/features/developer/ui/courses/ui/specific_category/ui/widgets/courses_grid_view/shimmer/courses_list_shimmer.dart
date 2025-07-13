import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CoursesListShimmer extends StatelessWidget {
  const CoursesListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 8.h),
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 0.72, // Matches your card aspect ratio
        ),
        itemBuilder: (context, index) => shimmerCard(),
      ),
    );
  }

  Widget shimmerCard() {
    return Shimmer.fromColors(
      baseColor: ColorsManager.silverChalice,
      highlightColor: ColorsManager.porcelain,
      child: Container(
        decoration: BoxDecoration(
          color: ColorsManager.ghostWhite,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.darkGrey.withOpacity(0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image placeholder
            Container(
              height: 120.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorsManager.aquaHaze,
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Container(
                    height: 12.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.ghostWhite,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  // Lessons
                  Container(
                    height: 10.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.ghostWhite,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(height: 6.h),
                  // Duration
                  Container(
                    height: 10.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                      color: ColorsManager.ghostWhite,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
