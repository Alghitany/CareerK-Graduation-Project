import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';

class SearchCoursesShimmer extends StatelessWidget {
  const SearchCoursesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(16.w),
      itemCount: 6,
      separatorBuilder: (_, __) => SizedBox(height: 16.h),
      itemBuilder: (_, __) => Shimmer.fromColors(
        baseColor: ColorsManager.pastelGrey,
        highlightColor: ColorsManager.ghostWhite,
        child: Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
            color: ColorsManager.ghostWhite,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Row(
            children: [
              // Image shimmer
              Container(
                width: 80.w,
                height: 80.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              SizedBox(width: 12.w),

              // Text shimmer
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title bar
                    Container(
                      width: double.infinity,
                      height: 16.h,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8.h),

                    // Duration bar
                    Container(
                      width: 100.w,
                      height: 14.h,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8.h),

                    // Rating bar
                    Container(
                      width: 60.w,
                      height: 14.h,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
