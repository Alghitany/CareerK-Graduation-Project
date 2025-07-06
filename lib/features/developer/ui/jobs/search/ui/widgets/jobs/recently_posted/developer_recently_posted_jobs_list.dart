import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../../core/helpers/date_formatter.dart';
import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../../core/widgets/app_choice_chip.dart';
import '../../../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';
import '../../../../../../../logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import '../../../../data/models/developer_jobs_recently_posted_models/developer_jobs_recently_posted_response_body.dart';

class DeveloperRecentlyPostedJobsList extends StatefulWidget {
  final List<DeveloperJobsRecentlyPostedResponseBody> jobs;

  const DeveloperRecentlyPostedJobsList({super.key, required this.jobs});

  @override
  State<DeveloperRecentlyPostedJobsList> createState() =>
      _DeveloperRecentlyPostedJobsListState();
}

class _DeveloperRecentlyPostedJobsListState
    extends State<DeveloperRecentlyPostedJobsList> {
  late List<DeveloperJobsRecentlyPostedResponseBody> jobs;

  @override
  void initState() {
    super.initState();
    jobs = widget.jobs;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        final job = jobs[index];

        return GestureDetector(
          onTap: () => context.pushNamed(
            Routes.developerJobsJobDetailsScreen,
            arguments: AppArgument(jobId: job.id),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            color: Colors.white,
            elevation: 4,
            margin: EdgeInsets.only(bottom: 16.h),
            child: Padding(
              padding: EdgeInsets.all(12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          job.title ?? '',
                          style:
                              AppTextStyles.font14RangoonGreenPoppinsSemiBold,
                        ),
                      ),
                      BlocProvider(
                        create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
                          ..bookmarkJob(job.id!),
                        child: DeveloperJobBookmarkBlocBuilder(postId: job.id!),
                      ),
                    ],
                  ),
                  verticalSpace(4),
                  Text(
                    formatTime(job.createdAt),
                    style: AppTextStyles.font10GranitePoppinsRegular,
                  ),
                  verticalSpace(12),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Budget: ',
                          style: AppTextStyles.font14LiverRalewayRegular,
                        ),
                        TextSpan(
                          text: job.salaryRange ?? 'N/A',
                          style: AppTextStyles.font14RangoonGreenRalewayMedium,
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(12),
                  Text(
                    job.experienceRequired ?? '',
                    style: AppTextStyles.font13LiverRalewayMedium,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          job.location ?? 'N/A',
                          style: AppTextStyles.font13LiverRalewayMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          job.jobType ?? 'N/A',
                          style: AppTextStyles.font13LiverRalewayMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          job.jobAvailability ?? 'N/A',
                          style: AppTextStyles.font13LiverRalewayMedium,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(12),
                  if (job.skills != null && job.skills!.isNotEmpty)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AppChoiceChip(
                            options: job.skills!,
                            selectedTextStyle:
                                AppTextStyles.font12GraniteRalewayRegular,
                            unSelectedTextStyle:
                                AppTextStyles.font12GraniteRalewayRegular,
                            selectedColor: ColorsManager.porcelain,
                            unSelectedColor: ColorsManager.porcelain,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
