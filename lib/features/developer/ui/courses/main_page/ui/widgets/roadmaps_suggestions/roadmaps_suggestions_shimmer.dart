import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class RoadmapsSuggestionsShimmer extends StatelessWidget {
  const RoadmapsSuggestionsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (_) => _buildShimmerItem()),
    );
  }

  Widget _buildShimmerItem() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey,
          highlightColor: ColorsManager.porcelain,
          child: Container(
            width: 60.h,
            height: 60.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ),
        verticalSpace(8),
        Shimmer.fromColors(
          baseColor: ColorsManager.pastelGrey,
          highlightColor: ColorsManager.porcelain,
          child: Container(
            width: 40.w,
            height: 14.h,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
