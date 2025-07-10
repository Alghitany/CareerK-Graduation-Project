import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/theming/colors.dart';

class CourseCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int duration; // in minutes
  final double rating;

  const CourseCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.duration,
    required this.rating,
  });

  String get formattedDuration {
    final hours = duration ~/ 60;
    final minutes = duration % 60;
    return '${hours}h ${minutes}m';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: ColorsManager.ghostWhite,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.mountainMist.withOpacity(0.2),
            blurRadius: 8.r,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Course Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: AppRegex.isSvg(imageUrl)
                ? SvgPicture.network(
              "${ApiConstants.apiBaseUrl}$imageUrl",
              width: 80.w,
              height: 80.w,
              fit: BoxFit.cover,
              placeholderBuilder: (_) => Image.asset(
                'assets/images/html_course.png',
                width: 80.w,
                height: 80.w,
                fit: BoxFit.cover,
              ),
            )
                : Image.network(
              "${ApiConstants.apiBaseUrl}$imageUrl",
              width: 80.w,
              height: 80.w,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/html_course.png',
                  width: 80.w,
                  height: 80.w,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
          horizontalSpace(12),

          // Course Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppTextStyles.font16DarkGreyPoppinsBold,
                ),
                SizedBox(height: 8.h),
                Text('Duration: $formattedDuration',
                    style: AppTextStyles.font14LemonGrassPoppinsRegular),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Icon(Icons.star,
                        color: ColorsManager.schoolBusYellow, size: 16.w),
                    SizedBox(width: 4.w),
                    Text(
                      '$rating',
                      style: AppTextStyles.font14CharcoalGreyPoppinsRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
