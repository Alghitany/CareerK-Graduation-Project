import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'course_category_card.dart';

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Should be replaced with the real list
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 16.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
        ),
        itemCount: 12,
        itemBuilder: (context, index) {
          //TODO: The favourites functionality should work correctly
          return const CourseCategoryCard(
            imagePath: 'assets/images/html_course.png',
            // Replace with your image path
            categoryName: 'Front-end Developer',
            coursesCount: '10',
            rating: '4.6',
            isFavourite: false,
          );
        },
      ),
    );
  }
}
