import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CompletedCoursesShimmer extends StatelessWidget {
  const CompletedCoursesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: 4, // Number of shimmer items
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 24.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: const BorderSide(
              color: ColorsManager.softPeach,
              width: 1,
            ),
          ),
          color: Colors.white,
          elevation: 0,
          child: Row(
            children: [
              // Image shimmer placeholder
              Shimmer.fromColors(
                baseColor: ColorsManager.softPeach,
                highlightColor: ColorsManager.mercury,
                child: Container(
                  width: 136.w,
                  height: 142.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.softPeach,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      bottomLeft: Radius.circular(16.r),
                    ),
                  ),
                ),
              ),
              Container(
                height: 142.h,
                width: MediaQuery.of(context).size.width - 136.w,
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 8.w, 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title and completed icon row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Shimmer.fromColors(
                            baseColor: ColorsManager.softPeach,
                            highlightColor: ColorsManager.mercury,
                            child: Container(
                              height: 20.h,
                              color: ColorsManager.softPeach,
                            ),
                          ),
                        ),
                        Shimmer.fromColors(
                          baseColor: ColorsManager.softPeach,
                          highlightColor: ColorsManager.mercury,
                          child: Container(
                            width: 24.w,
                            height: 24.h,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsManager.softPeach,
                            ),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(4),
                    // Description placeholder
                    Shimmer.fromColors(
                      baseColor: ColorsManager.softPeach,
                      highlightColor: ColorsManager.mercury,
                      child: Container(
                        height: 40.h,
                        color: ColorsManager.softPeach,
                        margin: EdgeInsets.only(right: 40.w),
                      ),
                    ),
                    verticalSpace(8),
                    // Progress text placeholder
                    Shimmer.fromColors(
                      baseColor: ColorsManager.softPeach,
                      highlightColor: ColorsManager.mercury,
                      child: Container(
                        height: 14.h,
                        width: 80.w,
                        color: ColorsManager.softPeach,
                      ),
                    ),
                    verticalSpace(14),
                    // View certificate placeholder
                    Align(
                      alignment: Alignment.centerRight,
                      child: Shimmer.fromColors(
                        baseColor: ColorsManager.softPeach,
                        highlightColor: ColorsManager.mercury,
                        child: Container(
                          height: 14.h,
                          width: 120.w,
                          color: ColorsManager.softPeach,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
