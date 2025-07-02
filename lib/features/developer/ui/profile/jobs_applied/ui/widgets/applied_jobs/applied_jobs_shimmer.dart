import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

import 'job_application/jobs_applications_shimmer.dart';
import 'service_application/service_application_shimmer.dart';


class AppliedJobsLoadingShimmer extends StatelessWidget {
  const AppliedJobsLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Jobs: ",
              style: AppTextStyles.font20DunePoppinsMedium,
            ),
          ),
          const JobApplicationShimmer(),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Services: ",
              style: AppTextStyles.font20DunePoppinsMedium,
            ),
          ),
          const ServiceApplicationsShimmer(),
        ],
      ),
    );
  }
}
