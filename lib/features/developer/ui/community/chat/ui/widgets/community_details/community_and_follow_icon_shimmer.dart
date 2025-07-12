import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/colors.dart';

class CommunityAndFollowIconShimmer extends StatelessWidget {
  const CommunityAndFollowIconShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorsManager.pastelGrey,
      highlightColor: ColorsManager.magnolia,
      child: Row(
        children: [
          // Circle shimmer (icon placeholder)
          Container(
            width: 60.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          horizontalSpace(10),
          // Text shimmer (name & member count)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.w,
                height: 16.h,
                color: Colors.white,
              ),
              verticalSpace(8),
              Container(
                width: 80.w,
                height: 14.h,
                color: Colors.white,
              ),
            ],
          ),
          const Spacer(),
          // Follow button shimmer
          Container(
            width: 40.w,
            height: 40.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
