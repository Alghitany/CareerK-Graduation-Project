import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class JobsRecommendationsLoading extends StatelessWidget {
  const JobsRecommendationsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center within the available space
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 48.h),
        // Optional padding
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/animations/ai_loading.json',
              width: 150.w,
              height: 150.h,
              fit: BoxFit.contain,
            ),
            verticalSpace(16),
            Text(
              'Finding the best recommendations for you...',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
