import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/styles.dart';

class CourseNameRatingAndNumberOfVideos extends StatelessWidget {
  final String courseName;
  final double averageRating;
  final int numberOfVideos;

  const CourseNameRatingAndNumberOfVideos({
    super.key,
    required this.courseName,
    required this.averageRating,
    required this.numberOfVideos,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            courseName,
            style: AppTextStyles.font16RangoonGreenPoppinsMedium,
          ),
          verticalSpace(4),
          Row(
            children: [
              Text(
                averageRating.toStringAsFixed(1),
                style: AppTextStyles.font14DunePoppinsRegular,
              ),
              horizontalSpace(4),
              const Icon(
                Icons.star,
                color: ColorsManager.schoolBusYellow,
                size: 16,
              ),
              horizontalSpace(23),
              Text(
                '$numberOfVideos Videos',
                style: AppTextStyles.font14DunePoppinsRegular,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
