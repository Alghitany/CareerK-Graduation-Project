import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../price_and_recent_filters.dart';
import 'recently_posted/developer_recently_posted_jobs_bloc_builder.dart';
import 'recommendations/jobs_recommendations_bloc_builder.dart';

class JobsTab extends StatefulWidget {
  const JobsTab({super.key});

  @override
  State<JobsTab> createState() => _JobsTabState();
}

class _JobsTabState extends State<JobsTab> {
  String? selectedSort;

  void _onSortChanged(String? value) {
    setState(() {
      selectedSort = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              PriceAndRecentFilters(
                selectedValue: selectedSort,
                onChanged: _onSortChanged,
              ),
              verticalSpace(16),
              if (selectedSort == 'Recent')
                const DeveloperRecentlyPostedJobsBlocBuilder()
              else
                const JobsRecommendationsBlocBuilder(),
            ],
          ),
        ),
      ],
    );
  }
}
