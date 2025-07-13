import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/theming/colors.dart';

class BookmarkedServicesListShimmer extends StatelessWidget {
  const BookmarkedServicesListShimmer({super.key});

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
                highlightColor: ColorsManager.ghostWhite,
                child: Container(
                  width: 88.w,
                  height: 88.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.mercury,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: ColorsManager.mercury,
                      highlightColor: ColorsManager.ghostWhite,
                      child: Container(
                        height: 16.h,
                        width: double.infinity,
                        color: ColorsManager.mercury,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Shimmer.fromColors(
                      baseColor: ColorsManager.mercury,
                      highlightColor: ColorsManager.ghostWhite,
                      child: Container(
                        height: 14.h,
                        width: 120.w,
                        color: ColorsManager.mercury,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Shimmer.fromColors(
                      baseColor: ColorsManager.mercury,
                      highlightColor: ColorsManager.ghostWhite,
                      child: Container(
                        height: 14.h,
                        width: 80.w,
                        color: ColorsManager.mercury,
                      ),
                    ),
                  ],
                ),
              ),
              Shimmer.fromColors(
                baseColor: ColorsManager.mercury,
                highlightColor: ColorsManager.ghostWhite,
                child: Container(
                  width: 22.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.mercury,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
