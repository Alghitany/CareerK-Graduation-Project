import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class CVGenerateShimmer extends StatelessWidget {
  const CVGenerateShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 48.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              'assets/animations/pdf_generate.json',
              // You can change the Lottie animation here
              width: 150.w,
              height: 150.h,
              fit: BoxFit.contain,
            ),
            verticalSpace(16),
            Text(
              'Loading CV preview...',
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
