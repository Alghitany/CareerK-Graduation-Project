import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ServiceDescriptionAndKeywordsShimmer extends StatelessWidget {
  const ServiceDescriptionAndKeywordsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey,
          highlightColor: ColorsManager.mercury,
          child: Container(
            height: 20.h,
            width: 150.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ),
        verticalSpace(8),
        Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey,
          highlightColor: ColorsManager.mercury,
          child: Container(
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.r),
            ),
          ),
        ),
        verticalSpace(24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              4,
              (index) => Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: Shimmer.fromColors(
                  baseColor: ColorsManager.pastelGrey,
                  highlightColor: ColorsManager.mercury,
                  child: Container(
                    height: 32.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
