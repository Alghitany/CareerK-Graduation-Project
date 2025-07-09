import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/helpers/spacing.dart';

class RelatedCoursesList extends StatefulWidget {
  const RelatedCoursesList({super.key});

  @override
  State<RelatedCoursesList> createState() => _RelatedCoursesListState();
}

class _RelatedCoursesListState extends State<RelatedCoursesList> {
  final List<Map<String, dynamic>> courses = [
    {
      'imagePath': "assets/images/html_course.png",
      'title': "Front end Developer",
      'totalCourses': 10,
      'duration': '8h 30min',
      'rating': 4.6,
      'isFavourite': false
    },
    {
      'imagePath': "assets/images/html_course.png",
      'title': "Front end Developer",
      'totalCourses': 10,
      'duration': '8h 30min',
      'rating': 4.6,
      'isFavourite': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: courses.length,
        separatorBuilder: (context, index) => horizontalSpace(14),
        itemBuilder: (context, index) {
          final course = courses[index];
          return GestureDetector(
            onTap: () {
              context.pushNamed(Routes.developerCoursesSpecificCategoryScreen);
            },
            child: Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: SizedBox(
                width: 230.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            topRight: Radius.circular(10.r),
                          ),
                          child: Image.asset(
                            course['imagePath'],
                            width: double.infinity,
                            height: 120.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 8.h,
                          left: 8.w,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                course['isFavourite'] = !course['isFavourite'];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(6.h),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: SvgPicture.asset(
                                course['isFavourite']
                                    ? 'assets/svgs/heart.svg'
                                    : 'assets/svgs/empty_heart.svg',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.w, 2.h, 8.w, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  course['title'],
                                  style: AppTextStyles.font14DunePoppinsRegular,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              horizontalSpace(8),
                              Text(
                                "(${course['totalCourses']} lessons)",
                                style: AppTextStyles
                                    .font12SilverChalicePoppinsMedium,
                              ),
                            ],
                          ),
                          verticalSpace(4),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 4.h),
                                decoration: BoxDecoration(
                                  color: ColorsManager.softPeach,
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: Text(
                                  course['duration'],
                                  style: AppTextStyles
                                      .font12WaikawaGreyPoppinsRegular,
                                ),
                              ),
                              horizontalSpace(72),
                              Text(
                                course['rating'].toString(),
                                style: AppTextStyles.font12DunePoppinsRegular,
                              ),
                              horizontalSpace(4),
                              SvgPicture.asset(
                                'assets/svgs/star.svg',
                                height: 16.h,
                                width: 16.w,
                                colorFilter: const ColorFilter.mode(
                                  ColorsManager.schoolBusYellow,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
