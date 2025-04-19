import 'package:carrerk/core/widgets/courses_and_jobs_main_page_top_bar.dart';
import 'package:carrerk/features/developer/jobs/main_page/widgets/related_jobs_and_view_all.dart';
import 'package:carrerk/features/developer/jobs/main_page/widgets/related_jobs_list.dart';
import 'package:carrerk/features/developer/jobs/main_page/widgets/services_for_you_and_view_all.dart';
import 'package:carrerk/features/developer/jobs/main_page/widgets/services_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class DeveloperJobsMainPageScreen extends StatelessWidget {
  const DeveloperJobsMainPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
