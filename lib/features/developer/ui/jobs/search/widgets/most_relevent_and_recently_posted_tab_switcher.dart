import 'package:carrerk/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/app_tab_switcher.dart';
import 'filtered_jobs.dart';
import 'sort_and_highest_paid_filters.dart';

class MostRelevantAndRecentlyPostedTabSwitcher extends StatefulWidget {
  const MostRelevantAndRecentlyPostedTabSwitcher({super.key});

  @override
  State<MostRelevantAndRecentlyPostedTabSwitcher> createState() =>
      _MostRelevantAndRecentlyPostedTabSwitcherState();
}

class _MostRelevantAndRecentlyPostedTabSwitcherState
    extends State<MostRelevantAndRecentlyPostedTabSwitcher> {
  int selectedIndex = 0;

  Widget _buildTabContent() {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              const SortAndHighestPaidFilters(),
              verticalSpace(16),
              const FilteredJobs(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTabSwitcher(
          tabs: const ['Most Relevant', 'Recently Posted'],
          selectedIndex: selectedIndex,
          onTabChanged: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          option0: _buildTabContent(),
          option1: _buildTabContent(),
        ),
      ],
    );
  }
}
