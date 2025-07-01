import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';

class CourseNameRatingAndNumberOfVideos extends StatelessWidget {
  const CourseNameRatingAndNumberOfVideos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Introduction to React',
            style: AppTextStyles.font16RangoonGreenPoppinsMedium,
          ),
          verticalSpace(4),
          Row(
            children: [
              Text('4.6', style: AppTextStyles.font14DunePoppinsRegular),
              horizontalSpace(4),
              const Icon(
                Icons.star,
                color: ColorsManager.schoolBusYellow,
                size: 16,
              ),
              horizontalSpace(23),
              Text('35 Videos', style: AppTextStyles.font14DunePoppinsRegular),
            ],
          ),
        ],
      ),
    );
  }
}
