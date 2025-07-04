import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/app_search_text_form_field.dart';
import '../../../../../core/widgets/developer_bottom_navigation_bar.dart';
import 'widgets/developer_home_top_bar_bloc_builder.dart';
import 'widgets/main_page_choice_chips.dart';
import 'widgets/main_page_popular_courses.dart';
import 'widgets/main_page_recommended_jobs.dart';
import 'widgets/popular_courses_and_see_all.dart';
import 'widgets/recommended_jobs_and_see_all.dart';

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
