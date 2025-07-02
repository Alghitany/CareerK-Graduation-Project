import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../logic/developer_jobs_recently_posted_logic/developer_jobs_recently_posted_cubit.dart';
import '../filtered_jobs.dart';
import 'price_and_recent_filters.dart';
import 'recently_posted/developer_recently_posted_jobs_bloc_builder.dart';

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

    if (value == 'Recent') {
      // Fetch recently posted jobs via Cubit
      // Trigger only once if needed
      // This is optional if you already call fetch in Bloc init
      context
          .read<DeveloperJobsRecentlyPostedCubit>()
          .fetchRecentlyPostedJobs();
    }
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
                const FilteredJobs(),
            ],
          ),
        ),
      ],
    );
  }
}
