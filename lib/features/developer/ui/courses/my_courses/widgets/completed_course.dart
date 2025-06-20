import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/theming/colors.dart';

class CompletedCourses extends StatelessWidget {
  const CompletedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> courses = [
      {
        'title': 'React JS',
        'subTitle': 'How to build user interfaces.',
        'hour': 4,
        'minute': 20,
        'rate': 4.5,
        'image': 'assets/images/html_course.png',
      },
      {
        'title': 'React JS',
        'subTitle': 'How to build user interfaces.',
        'hour': 4,
        'minute': 20,
        'rate': 4.5,
        'image': 'assets/images/html_course.png',
      },
      {
        'title': 'React JS',
        'subTitle': 'How to build user interfaces.',
        'hour': 4,
        'minute': 20,
        'rate': 4.5,
        'image': 'assets/images/html_course.png',
      },
      {
        'title': 'React JS',
        'subTitle': 'How to build user interfaces.',
        'hour': 4,
        'minute': 20,
        'rate': 4.5,
        'image': 'assets/images/html_course.png',
      },
      {
        'title': 'React JS',
        'subTitle': 'How to build user interfaces.',
        'hour': 4,
        'minute': 20,
        'rate': 4.5,
        'image': 'assets/images/html_course.png',
      },
      {
        'title': 'React JS',
        'subTitle': 'How to build user interfaces.',
        'hour': 4,
        'minute': 20,
        'rate': 4.5,
        'image': 'assets/images/html_course.png',
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return Card(
          margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 24.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: const BorderSide(
              color: ColorsManager.softPeach,
              width: 1,
            ),
          ),
          color: Colors.white,
          elevation: 0,
          child: Row(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                bottomLeft: Radius.circular(16.r),
              ),
              child: Image.asset(
                course['image'],
                width: 136.w,
                height: 142.h,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 142.h,
              width: MediaQuery.of(context).size.width - 136.w,
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 8.w, 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        course['title'],
                        style: AppTextStyles
                            .font16PrimaryWildBlueYonderPoppinsMedium,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsManager.cloverGreen,
                        ),
                        child: SvgPicture.asset(
                          'assets/svgs/completed.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                      )
                    ],
                  ),
                  verticalSpace(4),
                  Text(
                    course['subTitle'],
                    style: AppTextStyles.font14LiverPoppinsMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(8),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svgs/star.svg',
                        height: 12.h,
                        width: 12.w,
                        colorFilter: const ColorFilter.mode(
                            ColorsManager.schoolBusYellow, BlendMode.srcIn),
                      ),
                      horizontalSpace(4),
                      Text(
                        course['rate'].toString(),
                        style: AppTextStyles.font12IronSideGreyPoppinsSemiBold,
                      ),
                      horizontalSpace(8),
                      Text(
                        'I',
                        style: AppTextStyles.font14BlackMulishBold,
                      ),
                      horizontalSpace(8),
                      Text(
                        '${course['hour']} Hrs ${course['minute']} mins',
                        style: AppTextStyles.font12IronSideGreyPoppinsSemiBold,
                      ),
                    ],
                  ),
                  verticalSpace(14),
                  GestureDetector(
                    onTap: () {
                      //TODO: Can be removed due to we don't present courses
                      context.pushNamed(
                          Routes.developerCoursesCertificationScreen);
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.w, 0.h, 24.w, 0.h),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'View Certificate',
                          style: AppTextStyles
                              .font12BlueBerryPoppinsSemiBoldUnderlined,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        );
      },
    );
  }
}
