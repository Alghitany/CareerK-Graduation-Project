import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/features/developer/home_main_page/widgets/main_page_choice_chips.dart';
import 'package:carrerk/features/developer/home_main_page/widgets/main_page_popular_courses.dart';
import 'package:carrerk/features/developer/home_main_page/widgets/main_page_recommended_jobs.dart';
import 'package:carrerk/features/developer/home_main_page/widgets/recommended_jobs_and_see_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/app_bottom_navigation_bar.dart';
import '../../../core/widgets/app_developer_home_top_bar.dart';
import '../../../core/widgets/app_search_text_form_field.dart';
import 'widgets/popular_courses_and_see_all.dart';

class DeveloperHomeMainPageScreen extends StatelessWidget {
  const DeveloperHomeMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.h),
            child: Column(
              children: [
                const AppDeveloperHomeTopBar(
                  hiText: 'Hi, ALi',
                  subText: 'What Would you like to do \nToday? Search Below.',
                ),
                verticalSpace(16),
                const AppSearchTextFormField(),
                verticalSpace(16),
                const PopularCoursesAndSeeAll(),
                verticalSpace(8),
                const MainPageChoiceChips(),
                verticalSpace(8),
                const MainPagePopularCourses(),
                verticalSpace(16),
                const RecommendedJobsAndSeeAll(),
                verticalSpace(8),
                const MainPageRecommendedJobs(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
