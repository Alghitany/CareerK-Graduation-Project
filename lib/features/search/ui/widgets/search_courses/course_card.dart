import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            child: Image.network(
              imageUrl,
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
          SizedBox(width: 12.w),

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
