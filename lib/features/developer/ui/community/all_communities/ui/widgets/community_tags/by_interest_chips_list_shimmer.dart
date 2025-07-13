import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/theming/colors.dart';

class ByInterestChipsListShimmer extends StatelessWidget {
  const ByInterestChipsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 0 ? 0 : 4.w),
            child: Shimmer.fromColors(
              baseColor: ColorsManager.pastelGrey,
              highlightColor: ColorsManager.mercury,
              child: Container(
                height: 35.h,
                padding: EdgeInsets.symmetric(horizontal: 17.w),
                decoration: BoxDecoration(
                  color: ColorsManager.catskillWhite,
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
