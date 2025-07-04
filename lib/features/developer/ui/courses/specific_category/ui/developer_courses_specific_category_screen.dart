import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/courses_grid_view/courses_list_bloc_builder.dart';

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
          child: const Column(
            children: [
              Expanded(child: CoursesListBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
