import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/features/developer/ui/courses/specific_course/ui/widgets/specific_course_header_bloc_builder.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_tab_switcher.dart';
import 'widgets/course_lectures_tab/course_lectures_tab.dart';
import 'widgets/course_reviews_tab/course_reviews_tab.dart';
import 'widgets/specific_course_overview/specific_course_overview_bloc_builder.dart';

class DeveloperCoursesSpecificCourseScreen extends StatefulWidget {
  final String? courseId;

  const DeveloperCoursesSpecificCourseScreen(
      {super.key, required this.courseId});

  @override
  State<DeveloperCoursesSpecificCourseScreen> createState() =>
      _DeveloperCoursesSpecificCourseScreenState();
}

class _DeveloperCoursesSpecificCourseScreenState
    extends State<DeveloperCoursesSpecificCourseScreen> {
  int currentTabIndex = 0;

  void switchToLecturesTab() {
    setState(() {
      currentTabIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SpecificCourseHeaderBlocBuilder(courseId: widget.courseId),
              verticalSpace(16),
              AppTabSwitcher(
                tabs: const ['Overview', 'Lectures', 'Reviews'],
                selectedIndex: currentTabIndex,
                onTabChanged: (newIndex) {
                  setState(() {
                    currentTabIndex = newIndex;
                  });
                },
                option0: SpecificCourseOverviewBlocBuilder(
                  onStartLearning: switchToLecturesTab,
                ),
                option1: const CourseLecturesTab(),
                option2: const CourseReviewsTab(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
