import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_tab_switcher.dart';
import 'completed_course.dart';
import 'ongoing_courses.dart';

class OngoingAndCompletedTabSwitcher extends StatefulWidget {
  const OngoingAndCompletedTabSwitcher({super.key});

  @override
  State<OngoingAndCompletedTabSwitcher> createState() =>
      _OngoingAndCompletedTabSwitcherState();
}

class _OngoingAndCompletedTabSwitcherState
    extends State<OngoingAndCompletedTabSwitcher> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTabSwitcher(
          tabs: const ['Ongoing', 'Completed'],
          selectedIndex: selectedTabIndex,
          onTabChanged: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          option0: const OngoingCourses(),
          option1: const CompletedCourses(),
        ),
      ],
    );
  }
}
