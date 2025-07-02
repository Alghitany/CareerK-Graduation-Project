import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ServiceApplicationsShimmer extends StatelessWidget {
  const ServiceApplicationsShimmer({super.key});

  static const _baseColor = ColorsManager.mercury;
  static const _highlightColor = ColorsManager.softPeach;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (_) => _buildServiceItemShimmer()),
    );
  }

  Widget _buildServiceItemShimmer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
      child: Shimmer.fromColors(
        baseColor: _baseColor,
        highlightColor: _highlightColor,
        child: Container(
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            color: _baseColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title bar
              Container(width: 150.w, height: 16.h, decoration: BoxDecoration(
                color: _baseColor,
                borderRadius: BorderRadius.circular(8.r),
              )),
              verticalSpace(4),
              // Name bar
              Container(width: 100.w, height: 14.h, decoration: BoxDecoration(
                color: _baseColor,
                borderRadius: BorderRadius.circular(8.r),
              )),
              verticalSpace(12),
              // Bottom row: salary + status + withdraw button placeholders
              Row(
                children: [
                  // Coin icon placeholder as circle
                  Container(
                    width: 18.w,
                    height: 18.h,
                    decoration: const BoxDecoration(
                      color: _baseColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  horizontalSpace(6),
                  // Salary placeholder (expanded)
                  Expanded(
                    child: Container(
                      height: 14.h,
                      decoration: BoxDecoration(
                        color: _baseColor,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                  ),
                  horizontalSpace(8),
                  // Status badge placeholder
                  Container(
                    width: 80.w,
                    height: 20.h,
                    decoration: BoxDecoration(
                      color: _baseColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  horizontalSpace(8),
                  // Withdraw button placeholder
                  Container(
                    width: 80.w,
                    height: 32.h,
                    decoration: BoxDecoration(
                      color: _baseColor,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
