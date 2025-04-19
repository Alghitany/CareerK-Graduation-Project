import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_bottom_navigation_bar.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:carrerk/core/widgets/courses_and_jobs_main_page_top_bar.dart';
import 'package:carrerk/features/developer/courses/main_page/widgets/ongoing_courses_list.dart';
import 'package:carrerk/features/developer/courses/main_page/widgets/related_courses_and_view_all.dart';
import 'package:carrerk/features/developer/courses/main_page/widgets/related_courses_list.dart';
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
          padding: EdgeInsets.fromLTRB(0.0.w, 16.0.h, 0.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CoursesAndJobsMainPageTopBar(),
                verticalSpace(16),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0.w, 0.0.h, 16.w, 0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSearchTextFormField(
                        onTap: () {
                          context.pushNamed(Routes.searchScreen);
                        },
                      ),
                      verticalSpace(16),
                      const RoadmapsTextAndViewAll(),
                      verticalSpace(8),
                      const RoadmapsSuggestions(),
                      verticalSpace(16),
                      Text(
                        'Ongoing Courses',
                        style: AppTextStyles.font20DunePoppinsMedium,
                      ),
                    ],
                  ),
                ),
                verticalSpace(8),
                const OngoingCoursesList(),
                verticalSpace(16),
                const RelatedCoursesAndViewAll(),
                verticalSpace(8),
                const RelatedCoursesList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
