import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomerProfileShimmer extends StatelessWidget {
  const CustomerProfileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Circle avatar shimmer
          Container(
            width: 104.w,
            height: 104.h,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(height: 34.h),
          // Name shimmer
          Container(
            height: 16.h,
            width: 120.w,
            color: Colors.white,
          ),
          SizedBox(height: 8.h),
          // Location shimmer
          Container(
            height: 14.h,
            width: 80.w,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
