import 'package:flutter/material.dart';

import 'course_card.dart';

class SearchResultList extends StatelessWidget {
  final List courses;
  const SearchResultList({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: courses.length,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final course = courses[index];
        return CourseCard(
          name: course.name,
          imageUrl: course.imageUrl,
          duration: course.duration,
          rating: course.rating,
        );
      },
    );
  }
}
