import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:carrerk/features/developer/courses/categories/widgets/categories_app_bar_and_search_text_field.dart';
import 'package:carrerk/features/developer/courses/categories/widgets/categories_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class DeveloperCoursesCategoriesScreen extends StatelessWidget {
  const DeveloperCoursesCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: I think this screen can work much better than this.
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 1,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(8.0.w, 16.h, 8.0.w, 0.h),
          child: Column(
            children: [
              const CategoriesAppBarAndSearchTextField(),
              verticalSpace(24),
              const CategoriesGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
