import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../data/model/specific_course_reviews_models/specific_course_reviews_response_body.dart';
import 'review_item.dart';

class CourseReviewsTab extends StatelessWidget {
  final double averageRating;
  final List<Review> reviews;

  const CourseReviewsTab({
    super.key,
    required this.averageRating,
    required this.reviews,
  });

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
                averageRating.toStringAsFixed(1),
                style: AppTextStyles.font24DunePoppinsRegular,
              ),
              horizontalSpace(8),
              RatingBarIndicator(
                rating: averageRating,
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
          ...reviews.map((review) => ReviewItem(review: review)),
        ],
      ),
    );
  }
}
