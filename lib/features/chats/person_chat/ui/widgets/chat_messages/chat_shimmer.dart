import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ChatShimmer extends StatelessWidget {
  const ChatShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Row(
          mainAxisAlignment:
              index.isEven ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
            if (index.isEven)
              const CircleAvatar(backgroundColor: ColorsManager.santaGrey),
            if (index.isEven) SizedBox(width: 8.w),
            Shimmer.fromColors(
              baseColor: ColorsManager.mercury,
              highlightColor: ColorsManager.porcelain,
              child: Container(
                width: 224.w,
                margin: EdgeInsets.symmetric(vertical: 8.h),
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: ColorsManager.softPeach,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 12.h,
                      width: 120.w,
                      color: ColorsManager.rockBlue,
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      height: 12.h,
                      width: 60.w,
                      color: ColorsManager.rockBlue,
                    ),
                  ],
                ),
              ),
            ),
            if (index.isOdd) SizedBox(width: 8.w),
            if (index.isOdd)
              const CircleAvatar(backgroundColor: ColorsManager.blueJay),
          ],
        );
      },
    );
  }
}
