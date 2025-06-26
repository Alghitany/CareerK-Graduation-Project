import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/app_tab_switcher.dart';
import 'filtered_jobs.dart';
import 'sort_and_highest_paid_filters.dart';

class MostRelevantAndRecentlyPostedTabSwitcher extends StatefulWidget {
  const MostRelevantAndRecentlyPostedTabSwitcher({super.key});

  @override
  MostRelevantAndRecentlyPostedTabSwitcherState createState() =>
      MostRelevantAndRecentlyPostedTabSwitcherState();
}

class MostRelevantAndRecentlyPostedTabSwitcherState
    extends State<MostRelevantAndRecentlyPostedTabSwitcher> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppTabSwitcher(
        tabs: const ['Most Relevant', 'Recently Posted'],
        option0: Column(
          children: [
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  const SortAndHighestPaidFilters(),
                  verticalSpace(16),
                  //TODO: If this widget can be more refactored do it!!
                  const FilteredJobs(),
                ],
              ),
            ),
          ],
        ),
        option1: Column(
          children: [
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  const SortAndHighestPaidFilters(),
                  verticalSpace(16),
                  //TODO: If this widget can be more refactored do it!!
                  const FilteredJobs(),
                ],
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
