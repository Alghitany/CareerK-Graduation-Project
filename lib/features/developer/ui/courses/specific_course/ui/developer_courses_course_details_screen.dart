import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_tab_switcher.dart';
import 'widgets/course_lectures_tab/course_lectures_tab.dart';
import 'widgets/course_name_rating_and_number_of_videos.dart';
import 'widgets/course_overview_tap/course_overview_tab.dart';
import 'widgets/course_reviews_tab/course_reviews_tab.dart';
import 'widgets/image_preview_and_back_icon.dart';

class DeveloperCoursesCourseDetailsScreen extends StatefulWidget {
  const DeveloperCoursesCourseDetailsScreen({super.key});

  @override
  State<DeveloperCoursesCourseDetailsScreen> createState() =>
      _DeveloperCoursesCourseDetailsScreenState();
}

class _DeveloperCoursesCourseDetailsScreenState
    extends State<DeveloperCoursesCourseDetailsScreen> {
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
              ImagePreviewAndBackIcon(
                imageUrl: '',
                isBookmarked: false,
                onPlay: () {},
              ),
              verticalSpace(16),
              const CourseNameRatingAndNumberOfVideos(),
              verticalSpace(16),
              AppTabSwitcher(
                tabs: const ['Overview', 'Lectures', 'Reviews'],
                selectedIndex: currentTabIndex,
                onTabChanged: (newIndex) {
                  setState(() {
                    currentTabIndex = newIndex;
                  });
                },
                option0: CourseOverviewTab(
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
