import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/developer_courses_specific_category_response_body.dart';
import 'course_card.dart';

class CoursesGridView extends StatelessWidget {
  final List<Course> courses;

  const CoursesGridView({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 8.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
        ),
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return CourseCard(
            imagePath: course.imageUrl,
            title: course.name,
            totalLessons: course.totalLessons,
            duration: course.duration,
            onTap: () {
              context.pushNamed(Routes.developerCoursesCourseDetailsScreen);
            },
          );
        },
      ),
    );
  }
}
