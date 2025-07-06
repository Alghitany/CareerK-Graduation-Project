import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../../../core/theming/colors.dart';

class ImagePreviewAndBackIconShimmer extends StatelessWidget {
  const ImagePreviewAndBackIconShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image Shimmer Placeholder
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16.r),
            bottomRight: Radius.circular(16.r),
          ),
          child: Shimmer.fromColors(
            baseColor: ColorsManager.porcelain,
            highlightColor: ColorsManager.aquaHaze,
            child: Container(
              height: 285.h,
              width: double.infinity,
              color: ColorsManager.softPeach,
            ),
          ),
        ),

        // Back Button (shown normally)
        Positioned(
          top: 12.h,
          left: 12.w,
          child: const AppBackIcon(),
        ),

        // Bookmark Icon Shimmer
        Positioned(
          top: 4.h,
          right: 12.w,
          child: Shimmer.fromColors(
            baseColor: ColorsManager.porcelain,
            highlightColor: ColorsManager.aquaHaze,
            child: SvgPicture.asset(
              'assets/svgs/bookmark_outlined.svg',
              height: 18.h,
              width: 15.w,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),

        // Play Button Shimmer
        Positioned.fill(
          child: Center(
            child: Shimmer.fromColors(
              baseColor: ColorsManager.porcelain,
              highlightColor: ColorsManager.aquaHaze,
              child: SvgPicture.asset(
                "assets/svgs/play.svg",
                height: 56.h,
                width: 56.w,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
