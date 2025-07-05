import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carrerk/core/theming/colors.dart';

class CvShimmer extends StatelessWidget {
  const CvShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 406.h,
      decoration: BoxDecoration(
        color: ColorsManager.pastelGrey.withValues(alpha: 0.3 * 255),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: ColorsManager.lemonGrass,
          width: 1,
        ),
      ),
      child: const Center(
        child: Icon(
          Icons.picture_as_pdf,
          color: ColorsManager.lemonGrass,
          size: 48,
        ),
      ),
    );
  }
}