import 'package:flutter/material.dart';

import '../../../../../../core/widgets/app_tab_switcher.dart';
import 'completed_course.dart';
import 'ongoing_courses.dart';

class OngoingAndCompletedTabSwitcher extends StatefulWidget {
  const OngoingAndCompletedTabSwitcher({super.key});

  @override
  OngoingAndCompletedTabSwitcherState createState() =>
      OngoingAndCompletedTabSwitcherState();
}

class OngoingAndCompletedTabSwitcherState
    extends State<OngoingAndCompletedTabSwitcher> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppTabSwitcher(
          tabs: ['Ongoing', 'Completed'],
          option0: OngoingCourses(),
          option1: CompletedCourses(),
        ),
      ],
    );
  }
}
