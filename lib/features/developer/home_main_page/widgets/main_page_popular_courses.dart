import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/styles.dart';

class MainPagePopularCourses extends StatefulWidget {
  const MainPagePopularCourses({super.key});

  @override
  State<MainPagePopularCourses> createState() => _MainPagePopularCoursesState();
}

class _MainPagePopularCoursesState extends State<MainPagePopularCourses> {
  final List<Map<String, dynamic>> courses = [
    {
      'imagePath': 'assets/images/main_page_course.png',
      'courseCategory': 'Photoshop',
      'courseTitle': 'Graphic Design Advanced',
      'views': 10230,
      'rating': 4.5,
      'isBookmarked': false
    },
    {
      'imagePath': 'assets/images/main_page_course.png',
      'courseCategory': 'Graphic Design',
      'courseTitle': 'Graphic Design Advanced',
      'views': 7830,
      'rating': 4.2,
      'isBookmarked': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];

          return Row(
            children: [
              SizedBox(
                width: index == courses.length - 1 ? 277.h : 277.h,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: Image.asset(
                          course["imagePath"],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 134.h,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 8.0.h, left: 16.0.w),
                                child: Text(course["courseCategory"],
                                    style: AppTextStyles
                                        .font12DuskyBluePoppinsSemiBold),
                              ),
                              verticalSpace(4),
                              Padding(
                                padding: EdgeInsets.only(left: 13.0.w),
                                child: Text(course["courseTitle"],
                                    style:
                                        AppTextStyles.font14DunePoppinsMedium),
                              ),
                              verticalSpace(8),
                              Padding(
                                padding: EdgeInsets.only(left: 34.0.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(course["views"].toString(),
                                        style: AppTextStyles
                                            .font12DuneMulishExtraBold),
                                    horizontalSpace(8),
                                    Text("|",
                                        style: AppTextStyles
                                            .font14BlackMulishBold),
                                    horizontalSpace(8),
                                    const Icon(Icons.star,
                                        color: ColorsManager.schoolBusYellow,
                                        size: 16),
                                    horizontalSpace(4),
                                    Text(
                                      course["rating"].toString(),
                                      style: AppTextStyles
                                          .font12DuneMulishExtraBold,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 24.0.h),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  course['isBookmarked'] =
                                      !course['isBookmarked'];
                                });
                              },
                              icon: SvgPicture.asset(
                                  course['isBookmarked']
                                      ? "assets/svgs/bookmark_filled.svg"
                                      : "assets/svgs/bookmark_outlined.svg",
                                  width: 22,
                                  height: 22),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (index != courses.length - 1) horizontalSpace(8.w),
            ],
          );
        },
      ),
    );
  }
}
