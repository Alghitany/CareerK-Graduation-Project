import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../core/theming/styles.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar
          CircleAvatar(
            radius: 20.r,
            backgroundImage: const NetworkImage(
              'https://i.pravatar.cc/150?img=3', // Placeholder avatar
            ),
          ),
          horizontalSpace(12),
          // Review Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name & Date
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Joseph Stanly",
                      style: AppTextStyles.font14DunePoppinsRegular,
                    ),
                    Text(
                      "Jan 2024",
                      style: AppTextStyles.font10LiverPoppinsRegular,
                    ),
                  ],
                ),
                verticalSpace(4),
                // Rating stars
                RatingBarIndicator(
                  rating: 3,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: ColorsManager.schoolBusYellow,
                  ),
                  itemCount: 5,
                  itemSize: 18.sp,
                  unratedColor: ColorsManager.pastelGrey,
                ),
                verticalSpace(8),
                // Review text
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non id neque sit aliquam nam molestie dignissim ac eget. Fames congue faucibus in fermentum proin.",
                  style: AppTextStyles.font10IronSideGreyPoppinsRegular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
