import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int totalLessons;
  final String views;
  final String date;

  const CourseCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.totalLessons,
    required this.views,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO: After reviewing Database add the information screen for the course *important*
        //context.pushNamed(Routes.developerCoursesCourseInformationScreen);
      },
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                imagePath,
                height: 120.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8.0.w, 8.0.h, 8.0.w, 0.0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: AppTextStyles.font11RangoonGreenPoppinsMedium,
                      ),
                      const Spacer(),
                      Text('($totalLessons Lessons)',
                          style: AppTextStyles.font11SilverChalicePoppinsMedium)
                    ],
                  ),
                  verticalSpace(4),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/view_eye.svg',
                        height: 14.h,
                        width: 14.w,
                        colorFilter: const ColorFilter.mode(
                            ColorsManager.liver, BlendMode.srcIn),
                      ),
                      horizontalSpace(4),
                      Text(views,
                          style: AppTextStyles.font12LiverPoppinsRegular),
                      const Spacer(),
                      Text(date,
                          style: AppTextStyles.font12LiverPoppinsRegular),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
