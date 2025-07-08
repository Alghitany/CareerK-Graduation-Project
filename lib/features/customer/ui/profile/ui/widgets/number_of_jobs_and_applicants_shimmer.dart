import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class NumberOfJobsAndApplicantsShimmer extends StatelessWidget {
  const NumberOfJobsAndApplicantsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: const EdgeInsets.only(left: 64, right: 18),
        child: SizedBox(
          height: 77.h,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildColumnShimmer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: const VerticalDivider(
                  color: Colors.white, // shimmer color
                ),
              ),
              _buildColumnShimmer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildColumnShimmer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 16.h,
          width: 50.w,
          color: Colors.white,
        ),
        SizedBox(height: 8.h),
        Container(
          height: 20.h,
          width: 30.w,
          color: Colors.white,
        ),
      ],
    );
  }
}
