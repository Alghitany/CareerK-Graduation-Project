import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/theming/colors.dart';
import 'review_item.dart';

class CourseReviewsTab extends StatelessWidget {
  const CourseReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ratings and Reviews",
            style: AppTextStyles.font16LiverPoppinsSemiBold,
          ),
          verticalSpace(8),
          Row(
            children: [
              Text(
                "3.4",
                style: AppTextStyles.font24DunePoppinsRegular,
              ),
              horizontalSpace(8),
              RatingBarIndicator(
                rating: 3.4,
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: ColorsManager.schoolBusYellow,
                ),
                itemCount: 5,
                itemSize: 24.sp,
                unratedColor: ColorsManager.pastelGrey,
              ),
            ],
          ),
          verticalSpace(20),
          ...List.generate(3, (index) => const ReviewItem()),
        ],
      ),
    );
  }
}
