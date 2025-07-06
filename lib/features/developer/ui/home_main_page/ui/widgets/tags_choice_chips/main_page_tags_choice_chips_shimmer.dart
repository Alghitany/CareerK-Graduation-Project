import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class MainPageTagsChoiceChipsShimmer extends StatelessWidget {
  const MainPageTagsChoiceChipsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        separatorBuilder: (_, __) => SizedBox(width: 4.w),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: ColorsManager.silverChalice,
            highlightColor: ColorsManager.porcelain,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 7.h),
              decoration: BoxDecoration(
                color: ColorsManager.catskillWhite,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SizedBox(
                width: 70.w,
                height: 16.h,
              ),
            ),
          );
        },
      ),
    );
  }
}
