import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../filtered_jobs.dart';
import 'sort_and_highest_paid_filters.dart';

class ServicesTab extends StatelessWidget {
  const ServicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              const PriceFilters(),
              verticalSpace(16),
              const FilteredJobs(),
            ],
          ),
        ),
      ],
    );
  }
}
