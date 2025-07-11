import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class RoadmapsListShimmer extends StatelessWidget {
  const RoadmapsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      separatorBuilder: (_, __) => verticalSpace(8),
      itemBuilder: (context, index) => Container(
        height: 170.h,
        decoration: BoxDecoration(
          color: ColorsManager.ghostWhite,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.darkGrey.withOpacity(0.05),
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Left shimmer image
            Container(
              width: 133.w,
              height: 170.h,
              decoration: BoxDecoration(
                color: ColorsManager.aquaHaze,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r),
                ),
              ),
            ),
            horizontalSpace(9),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title and icon shimmer
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            shimmerContainer(width: 100.w, height: 16.h),
                            verticalSpace(4),
                            shimmerContainer(width: 60.w, height: 12.h),
                          ],
                        ),
                        const Spacer(),
                        shimmerCircle(size: 24.r),
                      ],
                    ),
                    verticalSpace(12),
                    // Start Point shimmer
                    Row(
                      children: [
                        shimmerCircle(size: 10.r),
                        horizontalSpace(8),
                        shimmerContainer(width: 60.w, height: 10.h),
                        horizontalSpace(4),
                        shimmerContainer(width: 100.w, height: 10.h),
                      ],
                    ),
                    verticalSpace(8),
                    // End Point shimmer
                    Row(
                      children: [
                        shimmerCircle(size: 10.r),
                        horizontalSpace(8),
                        shimmerContainer(width: 60.w, height: 10.h),
                        horizontalSpace(4),
                        shimmerContainer(width: 100.w, height: 10.h),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shimmerContainer({required double width, required double height}) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.silverChalice,
      highlightColor: ColorsManager.porcelain,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: ColorsManager.ghostWhite,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }

  Widget shimmerCircle({required double size}) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.silverChalice,
      highlightColor: ColorsManager.porcelain,
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          color: ColorsManager.ghostWhite,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
