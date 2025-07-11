import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class OngoingCoursesShimmer extends StatelessWidget {
  const OngoingCoursesShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      // Number of placeholder items
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17.r),
            border: Border.all(
              color: ColorsManager.softPeach,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 12,
                spreadRadius: 0,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _shimmerBox(height: 16.h, width: 120.w),
                          verticalSpace(8),
                          _shimmerBox(height: 12.h, width: double.infinity),
                          verticalSpace(4),
                          _shimmerBox(height: 12.h, width: double.infinity),
                          verticalSpace(4),
                          _shimmerBox(height: 12.h, width: 150.w),
                          verticalSpace(8),
                          Row(
                            children: [
                              _shimmerBox(height: 14.h, width: 14.w),
                              horizontalSpace(8),
                              _shimmerBox(height: 12.h, width: 100.w),
                            ],
                          ),
                        ],
                      ),
                    ),
                    horizontalSpace(12),
                    _shimmerCircle(size: 60.r),
                  ],
                ),
              ),
              verticalSpace(8),
              const Divider(color: ColorsManager.softPeach),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: _shimmerBox(height: 16.h, width: 120.w),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _shimmerBox({required double height, required double width}) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.silverChalice.withOpacity(0.4),
      highlightColor: ColorsManager.pastelGrey.withOpacity(0.3),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: ColorsManager.porcelain,
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    );
  }

  Widget _shimmerCircle({required double size}) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.silverChalice.withOpacity(0.4),
      highlightColor: ColorsManager.pastelGrey.withOpacity(0.3),
      child: Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
          color: ColorsManager.porcelain,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
