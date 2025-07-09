import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helpers/enums.dart';
import '../../../../../../core/routing/app_argument.dart';
import '../../../../../../core/widgets/courses_and_jobs_main_page_top_bar/courses_and_jobs_main_page_profile_bloc_builder.dart';
import 'widgets/main_page_ongoing_courses/main_page_ongoing_courses_bloc_builder.dart';
import 'widgets/main_page_related_courses/main_page_related_courses_bloc_builder.dart';
import 'widgets/related_courses_and_view_all.dart';
import 'widgets/roadmaps_suggestions/roadmaps_suggestions_bloc_builder.dart';
import 'widgets/roadmaps_text_and_view_all.dart';

class DeveloperCoursesMainPageScreen extends StatelessWidget {
  const DeveloperCoursesMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 1,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0.0.w, 16.0.h, 0.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const DeveloperCoursesAndJobsMainPageProfileBlocBuilder(),
                verticalSpace(16),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0.w, 0.0.h, 16.w, 0.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSearchTextFormField(
                        onTap: () {
                          context.pushNamed(Routes.searchScreen,
                              arguments: AppArgument(
                                query: "",
                                searchType: SearchType.courses,
                              ));
                        },
                      ),
                      verticalSpace(16),
                      const RoadmapsTextAndViewAll(),
                      verticalSpace(8),
                      const RoadmapsSuggestionsBlocBuilder(),
                      verticalSpace(16),
                      Text(
                        'Ongoing Courses',
                        style: AppTextStyles.font20DunePoppinsMedium,
                      ),
                    ],
                  ),
                ),
                verticalSpace(8),
                const MainPageOngoingCoursesBlocBuilder(),
                verticalSpace(16),
                const RelatedCoursesAndViewAll(),
                verticalSpace(8),
                const MainPageRelatedCoursesBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
