import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/related_courses/developer_courses_related_courses_response_body.dart';
import 'course_card.dart';

class RelatedCoursesGridView extends StatelessWidget {
  final List<DeveloperCoursesRelatedCoursesResponseBody> courses;

  const RelatedCoursesGridView({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(bottom: 16.h),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.9,
      ),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];
        return CourseCard(
          courseId: course.courseId,
          imagePath: course.imageUrl,
          categoryName: course.name,
          coursesCount: course.totalLessons.toString(),
          rating: course.rating.toString() ?? "N/A",
        );
      },
    );
  }
}
