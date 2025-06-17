import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import 'widgets/courses_grid_view.dart';
import 'widgets/specific_category_app_bar_and_search_text_field.dart';


class DeveloperCoursesSpecificCategoryScreen extends StatelessWidget {
  const DeveloperCoursesSpecificCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 1,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.0.w, 16.h, 8.0.w, 0.h),
          child: Column(
            children: [
              const SpecificCategoryAppBarAndSearchTextField(),
              verticalSpace(24),
              const CoursesGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
