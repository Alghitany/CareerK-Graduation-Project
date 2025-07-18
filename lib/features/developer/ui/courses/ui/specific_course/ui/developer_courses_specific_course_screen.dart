import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/app_tab_switcher.dart';
import 'widgets/specific_course_header/specific_course_header_bloc_builder.dart';
import 'widgets/specific_course_lectures/specific_course_lectures_bloc_builder.dart';
import 'widgets/specific_course_overview/specific_course_overview_bloc_builder.dart';
import 'widgets/specific_course_reviews/specific_course_reviews_bloc_builder.dart';

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
                option1: SpecificCourseLecturesBlocBuilder(
                  courseId: widget.courseId ?? "",
                ),
                option2: const SpecificCourseReviewsBlocBuilder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
