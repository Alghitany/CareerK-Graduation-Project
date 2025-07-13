import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class NotificationsShimmer extends StatelessWidget {
  const NotificationsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      separatorBuilder: (_, __) => SizedBox(height: 12.h),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
          child: Container(
            height: 138.h,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(21.5.w, 18.h, 13.w, 14.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 16.h,
                  width: 120.w,
                  color: Colors.white,
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 14.h,
                  width: double.infinity,
                  color: Colors.white,
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 14.h,
                  width: 180.w,
                  color: Colors.white,
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.access_time, size: 14, color: Colors.white),
                    SizedBox(width: 4.w),
                    Container(
                      height: 12.h,
                      width: 60.w,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
