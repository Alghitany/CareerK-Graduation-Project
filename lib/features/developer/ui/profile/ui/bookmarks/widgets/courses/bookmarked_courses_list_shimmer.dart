import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/colors.dart';

class BookmarkedCoursesListShimmer extends StatelessWidget {
  const BookmarkedCoursesListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: 6, // Adjust number of shimmer items if needed
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8.h),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.mercury,
                highlightColor: ColorsManager.pastelGrey,
                child: Container(
                  width: 88.w,
                  height: 88.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.mercury,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    shimmerBox(width: double.infinity, height: 16.h),
                    verticalSpace(8),
                    shimmerBox(width: double.infinity, height: 14.h),
                    verticalSpace(8),
                    shimmerBox(width: 100.w, height: 16.h),
                  ],
                ),
              ),
              Shimmer.fromColors(
                baseColor: ColorsManager.mercury,
                highlightColor: ColorsManager.pastelGrey,
                child: Container(
                  width: 22.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.mercury,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget shimmerBox({required double width, required double height}) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.pastelGrey,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ColorsManager.mercury,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
