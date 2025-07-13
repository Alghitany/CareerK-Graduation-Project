import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/colors.dart';

class BookmarkedJobsListShimmer extends StatelessWidget {
  const BookmarkedJobsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 8.h),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: ColorsManager.porcelain,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: ColorsManager.darkGrey.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image shimmer
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Shimmer.fromColors(
                  baseColor: ColorsManager.mercury,
                  highlightColor: ColorsManager.pastelGrey,
                  child: Container(
                    width: 88.w,
                    height: 88.h,
                    color: ColorsManager.mercury,
                  ),
                ),
              ),
              horizontalSpace(12),
              // Details shimmer
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    shimmerBox(height: 16.h, width: 120.w),
                    verticalSpace(4),
                    shimmerBox(height: 14.h, width: 100.w),
                    verticalSpace(8),
                    Row(
                      children: [
                        shimmerBox(
                            height: 20.h, width: 20.w, shape: BoxShape.circle),
                        horizontalSpace(6),
                        shimmerBox(height: 16.h, width: 60.w),
                      ],
                    ),
                  ],
                ),
              ),
              shimmerBox(height: 22.h, width: 22.w),
            ],
          ),
        );
      },
    );
  }

  Widget shimmerBox(
      {double? height, double? width, BoxShape shape = BoxShape.rectangle}) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.pastelGrey,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: ColorsManager.mercury,
          shape: shape,
          borderRadius:
              shape == BoxShape.circle ? null : BorderRadius.circular(8),
        ),
      ),
    );
  }
}
