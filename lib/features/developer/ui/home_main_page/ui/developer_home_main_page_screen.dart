import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/app_search_text_form_field.dart';
import '../../../../../core/widgets/developer_bottom_navigation_bar.dart';
import 'widgets/courses/main_page_courses_bloc_builder.dart';
import 'widgets/recommended_courses_and_see_all.dart';
import 'widgets/recommended_jobs/main_page_recommended_jobs_bloc_builder.dart';
import 'widgets/recommended_jobs_and_see_all.dart';
import 'widgets/tags_choice_chips/main_page_tags_bloc_builder.dart';
import 'widgets/top_bar/developer_home_top_bar_bloc_builder.dart';

class DeveloperHomeMainPageScreen extends StatelessWidget {
  const DeveloperHomeMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.h),
            child: Column(
              children: [
                const DeveloperHomeTopBarBlocBuilder(),
                verticalSpace(16),
                AppSearchTextFormField(
                  onTap: () {
                    context.pushNamed(Routes.searchScreen);
                  },
                ),
                verticalSpace(16),
                const RecommendedCoursesAndSeeAll(),
                verticalSpace(8),
                const DeveloperTagsBlocBuilder(),
                verticalSpace(8),
                const DeveloperCoursesBlocBuilder(),
                verticalSpace(16),
                const RecommendedJobsAndSeeAll(),
                verticalSpace(8),
                const MainPageRecommendedJobsBlocBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
