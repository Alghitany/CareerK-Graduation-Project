import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../../data/models/company_profile_all_jobs_posts_models/company_profile_all_job_posts_response_body.dart';

class AllJobPostsList extends StatelessWidget {
  final List<JobPostItem> jobPosts;

  const AllJobPostsList({super.key, required this.jobPosts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'All Jobs',
            style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
          ),
        ),
        verticalSpace(12),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: jobPosts.length,
          itemBuilder: (context, index) {
            final job = jobPosts[index];
            return Card(
              color: Colors.white,
              elevation: 0,
              margin: EdgeInsets.only(bottom: 16.h),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: ColorsManager.pastelGrey),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: ListTile(
                onTap: () {
                  context.pushNamed(Routes.developerJobsJobDetailsScreen,
                      arguments: AppArgument(jobId: job.id, isCompany: true));
                },
                title: Text(
                  job.title,
                  style: AppTextStyles.font16BlackPoppinsMedium,
                ),
                subtitle: Text(
                  job.location,
                  style: AppTextStyles.font10RangoonGreenPoppinsRegular,
                ),
                trailing: TextButton(
                  onPressed: () {
                    // TODO: Implement delete from backend if needed
                    // Example: context.read<YourCubit>().deleteJob(job.id);
                  },
                  child: Text(
                    "Delete",
                    style: AppTextStyles.font12ArtyClickRedPoppinsRegular,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
