import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/widgets/app_bottom_navigation_bar.dart';
import 'package:carrerk/features/developer/jobs/search/widgets/filtered_jobs.dart';
import 'package:carrerk/features/developer/jobs/search/widgets/sort_and_highest_paid_filters.dart';
import 'package:carrerk/features/developer/jobs/search/widgets/top_bar_and_search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/most_relevent_and_recently_posted_tab_switcher.dart';

class DeveloperJobsSearchScreen extends StatelessWidget {
  const DeveloperJobsSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigationBar(
        selectedIndex: 2,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const TopBarAndSearchField(),
            verticalSpace(24),
            //TODO: Make the indicator work as slider.
            //TODO: Make the indicator filter also
            const MostRelevantAndRecentlyPostedTabSwitcher(),
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
    );
  }
}
