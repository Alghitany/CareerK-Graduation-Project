import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class CustomerJobsListShimmer extends StatelessWidget {
  const CustomerJobsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(bottom: 16.h),
      itemCount: 6,
      separatorBuilder: (_, __) => SizedBox(height: 16.h),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            padding: EdgeInsets.all(12.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 14.h,
                  width: 120.w,
                  color: Colors.white,
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 12.h,
                  width: double.infinity,
                  color: Colors.white,
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 10.h,
                  width: 180.w,
                  color: Colors.white,
                ),
                SizedBox(height: 12.h),
                Row(
                  children: List.generate(3, (_) {
                    return Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: Container(
                        height: 20.h,
                        width: 50.w,
                        color: Colors.white,
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
