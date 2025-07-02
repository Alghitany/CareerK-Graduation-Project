import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/colors.dart';

class AppliedJobsShimmer extends StatelessWidget {
  const AppliedJobsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSectionTitleShimmer(),
        verticalSpace(8),
        _buildJobShimmer(),
        verticalSpace(16),
        _buildSectionTitleShimmer(),
        verticalSpace(8),
        _buildServiceShimmer(),
      ],
    );
  }

  Widget _buildSectionTitleShimmer() {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.softPeach,
      child: Container(
        width: 150.w,
        height: 20.h,
        color: ColorsManager.mercury,
        margin: EdgeInsets.symmetric(horizontal: 16.w),
      ),
    );
  }

  Widget _buildJobShimmer() {
    return Column(
      children: List.generate(3, (index) => _buildJobItemShimmer()),
    );
  }

  Widget _buildJobItemShimmer() {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.softPeach,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: ColorsManager.mercury,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              width: 88.w,
              height: 88.h,
              decoration: BoxDecoration(
                color: ColorsManager.mercury,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 120.w,
                      height: 16.h,
                      color: ColorsManager.softPeach),
                  SizedBox(height: 6.h),
                  Container(
                      width: 80.w,
                      height: 14.h,
                      color: ColorsManager.softPeach),
                  SizedBox(height: 12.h),
                  Container(
                      width: 100.w,
                      height: 14.h,
                      color: ColorsManager.softPeach),
                ],
              ),
            ),
            SizedBox(width: 8.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 60.w, height: 16.h, color: ColorsManager.softPeach),
                SizedBox(height: 8.h),
                Container(
                    width: 50.w, height: 14.h, color: ColorsManager.softPeach),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildServiceShimmer() {
    return Column(
      children: List.generate(2, (index) => _buildServiceItemShimmer()),
    );
  }

  Widget _buildServiceItemShimmer() {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.softPeach,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: ColorsManager.mercury,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 150.w, height: 16.h, color: ColorsManager.softPeach),
            SizedBox(height: 6.h),
            Container(
                width: 100.w, height: 14.h, color: ColorsManager.softPeach),
            SizedBox(height: 12.h),
            Container(
                width: 120.w, height: 14.h, color: ColorsManager.softPeach),
          ],
        ),
      ),
    );
  }
}
