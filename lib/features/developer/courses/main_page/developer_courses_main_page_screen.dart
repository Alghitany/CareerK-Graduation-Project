import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_bottom_navigation_bar.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:carrerk/features/developer/courses/main_page/widgets/courses_main_page_top_bar.dart';
import 'package:carrerk/features/developer/courses/main_page/widgets/roadmaps_suggestions.dart';
import 'package:carrerk/features/developer/courses/main_page/widgets/roadmaps_text_and_view_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperCoursesMainPageScreen extends StatelessWidget {
  const DeveloperCoursesMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(
        selectedIndex: 1,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.0.w,24.0.h,0.w,0.h),
          child: Column(
            children: [
              const CoursesMainPageTopBar(),
              verticalSpace(24),
              Padding(
                padding: EdgeInsets.fromLTRB(16.0.w,0.0.h,16.w,0.h),
                child: Column(
                  children: [
                    const AppSearchTextFormField(),
                    verticalSpace(24),
                    const RoadmapsTextAndViewAll(),
                    verticalSpace(8),
                    const RoadmapsSuggestions(),
                    verticalSpace(16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
