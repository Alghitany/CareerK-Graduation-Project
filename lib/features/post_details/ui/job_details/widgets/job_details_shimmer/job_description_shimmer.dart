import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class JobDescriptionShimmer extends StatelessWidget {
  const JobDescriptionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.mercury,
      highlightColor: ColorsManager.geyser,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180.w,
            height: 24.h,
            color: Colors.white,
          ),
          verticalSpace(8),
          Container(
            width: double.infinity,
            height: 14.h,
            color: Colors.white,
          ),
          verticalSpace(6),
          Container(
            width: double.infinity,
            height: 14.h,
            color: Colors.white,
          ),
          verticalSpace(6),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 14.h,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
