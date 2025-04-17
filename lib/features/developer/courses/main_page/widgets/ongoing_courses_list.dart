import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OngoingCoursesList extends StatefulWidget {
  const OngoingCoursesList({super.key});

  @override
  State<OngoingCoursesList> createState() => _OngoingCoursesListState();
}

class _OngoingCoursesListState extends State<OngoingCoursesList> {
  final List<Map<String, dynamic>> courses = [
    {
      'imagePath': "assets/images/html_course.png",
      'title': "React Js",
      'completed': 12,
      'total': 30,
      'isFavourite': false
    },
    {
      'imagePath': "assets/images/html_course.png",
      'title': "React Js",
      'completed': 12,
      'total': 30,
      'isFavourite': false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: courses.length,
        separatorBuilder: (context, index) => horizontalSpace(14),
        itemBuilder: (context, index) {
          final course = courses[index];
          double progress = course['completed'] / course['total'];
          return GestureDetector(
            onTap: (){
              context.pushNamed(Routes.developerCoursesMyCoursesScreen);
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
                      padding: EdgeInsets.all(12.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                course['title'],
                                style: AppTextStyles.font14DunePoppinsRegular,
                              ),
                              const Spacer(),
                              Text(
                                "(${course['total']} lessons)",
                                style: AppTextStyles.font12SilverChalicePoppinsMedium,
                              ),
                            ],
                          ),
                          verticalSpace(4),
                          Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.r),
                                  child: LinearProgressIndicator(
                                    value: progress,
                                    backgroundColor: ColorsManager.mercury,
                                    color: ColorsManager.waikawaGrey,
                                    minHeight: 4,
                                  ),
                                ),
                              ),
                              horizontalSpace(8),
                              Text(
                                "${course['completed']}/${course['total']}",
                                style: AppTextStyles.font12BlueJayPoppinsMedium,
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
