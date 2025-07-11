import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../../core/theming/styles.dart';
import '../../../../data/model/specific_course_reviews_models/specific_course_reviews_response_body.dart';

class ReviewItem extends StatelessWidget {
  final Review review;

  const ReviewItem({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar (Optional: Fallback to initials or placeholder if null)
          CircleAvatar(
            radius: 20.r,
            backgroundColor: Colors.grey.shade200,
            child: ClipOval(
              child: Image.network(
                review.profilePicture ?? 'https://i.pravatar.cc/150?img=3',
                width: 40.w,
                height: 40.h,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                    'https://i.pravatar.cc/150?img=3',
                    width: 40.w,
                    height: 40.h,
                    fit: BoxFit.cover,
                  );
                },
              ),
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
                      review.developer.trim().isEmpty
                          ? "Anonymous"
                          : review.developer,
                      style: AppTextStyles.font14DunePoppinsRegular,
                    ),
                    Text(
                      review.date.split('T').first, // YYYY-MM-DD
                      style: AppTextStyles.font10LiverPoppinsRegular,
                    ),
                  ],
                ),
                verticalSpace(4),
                // Rating stars
                RatingBarIndicator(
                  rating: review.rating.toDouble(),
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
                  review.comment,
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
