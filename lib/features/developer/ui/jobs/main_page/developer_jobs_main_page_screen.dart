import 'package:carrerk/core/widgets/developer_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/courses_and_jobs_main_page_top_bar/courses_and_jobs_main_page_profile_bloc_builder.dart';
import 'widgets/related_jobs_and_view_all.dart';
import 'widgets/related_jobs_list.dart';
import 'widgets/services_for_you_and_view_all.dart';
import 'widgets/services_list.dart';



class DeveloperJobsMainPageScreen extends StatelessWidget {
  const DeveloperJobsMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const DeveloperBottomNavigationBar(
        selectedIndex: 2,
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
                    children: [
                      const ServicesForYouAndViewAll(),
                      verticalSpace(12),
                      const ServicesList(),
                      verticalSpace(16),
                      const RelatedJobsAndViewAll(),
                      verticalSpace(16),
                    ],
                  ),
                ),
                const RelatedJobsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
