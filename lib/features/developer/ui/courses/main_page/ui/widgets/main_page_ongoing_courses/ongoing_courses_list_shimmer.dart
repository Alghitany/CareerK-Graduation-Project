import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OngoingCoursesListShimmer extends StatelessWidget {
  const OngoingCoursesListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 188.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 2,
        // Display 2 shimmer items
        separatorBuilder: (_, __) => horizontalSpace(14),
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: SizedBox(
              width: 230.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image shimmer placeholder
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.r),
                      topRight: Radius.circular(10.r),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 120.h,
                      color: ColorsManager.mercury,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title shimmer
                        Container(
                          height: 12.h,
                          width: 140.w,
                          color: ColorsManager.mercury,
                        ),
                        verticalSpace(8),
                        // Lessons shimmer
                        Container(
                          height: 10.h,
                          width: 80.w,
                          color: ColorsManager.mercury,
                        ),
                        verticalSpace(8),
                        // Progress Bar shimmer
                        Container(
                          height: 4.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorsManager.mercury,
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
        },
      ),
    );
  }
}
