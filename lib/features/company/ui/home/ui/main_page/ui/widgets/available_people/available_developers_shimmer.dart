import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class AvailableDevelopersShimmer extends StatelessWidget {
  const AvailableDevelopersShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 0.h, 0.w, 0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: ColorsManager.pastelGrey,
            highlightColor: ColorsManager.mercury,
            child: Container(
              height: 16.h,
              width: 120.w,
              color: Colors.white,
            ),
          ),
          verticalSpace(8),
          SizedBox(
            height: 125.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 4, // shimmer items count
              separatorBuilder: (_, __) => horizontalSpace(8),
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: ColorsManager.pastelGrey,
                  highlightColor: ColorsManager.mercury,
                  child: Container(
                    width: 220.w,
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: ColorsManager.mercury),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        horizontalSpace(4),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 12.h,
                              width: 60.w,
                              color: Colors.white,
                            ),
                            verticalSpace(4),
                            Container(
                              height: 10.h,
                              width: 50.w,
                              color: Colors.white,
                            ),
                            verticalSpace(4),
                            Container(
                              height: 10.h,
                              width: 100.w,
                              color: Colors.white,
                            ),
                            verticalSpace(8),
                            Container(
                              height: 20.h,
                              width: 70.w,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
