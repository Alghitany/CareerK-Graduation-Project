import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/routing/app_argument.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';
import '../../../../../../logic/developer_add_job_bookmark_logic/developer_add_job_bookmark_cubit.dart';
import '../../../../../../logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import '../../data/models/developer_profile_jobs_bookmarked_models/developer_profile_jobs_bookmarked_response_body.dart';

class BookmarkedJobsList extends StatelessWidget {
  final List<DeveloperProfileJobsBookmarkedResponseBody> jobs;

  const BookmarkedJobsList({super.key, required this.jobs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: jobs.length,
      shrinkWrap: true,
      // lets ListView size itself to children
      physics: const NeverScrollableScrollPhysics(),
      // disables inner scrolling
      itemBuilder: (context, index) {
        final job = jobs[index];
        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.developerJobsJobDetailsScreen,
              arguments: AppArgument(jobId: job.postId ?? ''),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.h),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AppRegex.isSvg('')
                      ? SvgPicture.network(
                          "",
                          width: 88.w,
                          height: 88.h,
                          fit: BoxFit.cover,
                          placeholderBuilder: (context) =>
                              const Center(child: CircularProgressIndicator()),
                        )
                      : Image.network(
                          "",
                          width: 88.w,
                          height: 88.h,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            'assets/images/recommended_job.png',
                            width: 88.w,
                            height: 88.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
                horizontalSpace(12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        job.title ?? 'No Title',
                        style: AppTextStyles.font14BlackPoppinsSemiBold,
                      ),
                      verticalSpace(4),
                      Text(
                        job.location ?? 'Not Specified',
                        style: AppTextStyles.font12BlackPoppinsLight,
                      ),
                      verticalSpace(8),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svgs/coin.svg",
                            width: 20.w,
                            height: 20.h,
                          ),
                          horizontalSpace(6),
                          Text(
                            job.salaryRange ?? 'N/A',
                            style: AppTextStyles.font14DuskyBluePoppinsSemiBold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                MultiBlocProvider(
                  providers: [
                    BlocProvider(
                        create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
                          ..bookmarkJob(job.postId!)),
                    BlocProvider(
                        create: (_) => getIt<DeveloperAddJobBookmarkCubit>()),
                  ],
                  child: DeveloperJobBookmarkBlocBuilder(postId: job.postId!),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
