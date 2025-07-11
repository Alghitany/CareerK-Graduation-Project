import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/spacing.dart';
import 'widgets/related_courses_app_bar_and_search_text_field.dart';
import 'widgets/related_courses_grid_view_bloc_builder.dart';

class DeveloperCoursesRelatedCoursesScreen extends StatelessWidget {
  const DeveloperCoursesRelatedCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8.0.w, 16.h, 8.0.w, 0.h),
            child: Column(
              children: [
                const RelatedCoursesAppBarAndSearchTextField(),
                verticalSpace(24),
                const RelatedCoursesGridViewBlocBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
