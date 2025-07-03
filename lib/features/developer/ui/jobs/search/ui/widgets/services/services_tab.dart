import 'package:carrerk/features/developer/ui/jobs/search/logic/developer_services_recently_posted_logic/developer_services_recently_posted_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../filtered_jobs.dart';
import '../price_and_recent_filters.dart';
import 'recently_posted/developer_recently_posted_jobs_bloc_builder.dart';

class ServicesTab extends StatefulWidget {
  const ServicesTab({super.key});

  @override
  State<ServicesTab> createState() => _ServicesTabState();
}

class _ServicesTabState extends State<ServicesTab> {
  String? selectedSort;
  bool _hasFetchedRecentlyPosted = false; // Flag to avoid repeated fetch

  void _onSortChanged(String? value) {
    setState(() {
      selectedSort = value;
    });

    if (value == 'Recent' && !_hasFetchedRecentlyPosted) {
      context
          .read<DeveloperServicesRecentlyPostedCubit>()
          .fetchRecentlyPostedServices();
      _hasFetchedRecentlyPosted = true;
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
                const DeveloperRecentlyPostedServicesBlocBuilder()
              else
                const FilteredJobs(),
            ],
          ),
        ),
      ],
    );
  }
}
