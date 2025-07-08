import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class AllJobsShimmer extends StatelessWidget {
  const AllJobsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        children: List.generate(5, (index) => _buildShimmerCard()),
      ),
    );
  }

  Widget _buildShimmerCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title shimmer
          Container(
            height: 16.h,
            width: 150.w,
            color: Colors.white,
          ),
          SizedBox(height: 8.h),
          // Description shimmer
          Container(
            height: 12.h,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 4.h),
          Container(
            height: 12.h,
            width: double.infinity,
            color: Colors.white,
          ),
          SizedBox(height: 8.h),
          // Budget shimmer
          Container(
            height: 12.h,
            width: 60.w,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
