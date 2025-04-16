import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'course_card.dart';

class CoursesGridView extends StatelessWidget {
  const CoursesGridView({super.key});

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
        itemCount: 12,
        itemBuilder: (context, index) {
          //TODO:Add the real list from database
          return const CourseCard(
            imagePath: 'assets/images/html_course.png',
            title: 'HTML Course',
            totalLessons: 30,
            views: '28K',
            date: '28 Jan 2024',
          );
        },
      ),
    );
  }
}
