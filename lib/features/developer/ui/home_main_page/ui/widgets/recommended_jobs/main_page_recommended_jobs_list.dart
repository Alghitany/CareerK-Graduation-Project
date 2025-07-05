import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';
import '../../../../../data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';
import '../../../../../logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';

class MainPageRecommendedJobsList extends StatefulWidget {
  final List<JobRecommendation> jobs;

  const MainPageRecommendedJobsList({super.key, required this.jobs});

  @override
  State<MainPageRecommendedJobsList> createState() =>
      _MainPageRecommendedJobsListState();
}

class _MainPageRecommendedJobsListState
    extends State<MainPageRecommendedJobsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: widget.jobs.length,
      itemBuilder: (context, index) {
        final job = widget.jobs[index];
        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.developerJobsJobDetailsScreen,
              arguments: AppArgument(jobId: job.id),
            );
          },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha((0.1 * 255).toInt()),
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
            child: Image.network(
              job.companyProfilePicture ?? '',
              width: 88.w,
              height: 88.h,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  "assets/images/recommended_job.png",
                  width: 88.w,
                  height: 88.h,
                  fit: BoxFit.cover,
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Shimmer.fromColors(
                  baseColor: Colors.grey.shade300,
                  highlightColor: Colors.grey.shade100,
                  child: Container(
                    width: 88.w,
                    height: 88.h,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ),

          horizontalSpace(12),
                // Job Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(job.title ?? 'No title',
                          style: AppTextStyles.font14BlackPoppinsSemiBold),
                      verticalSpace(4),
                      Text(job.location ?? 'Unknown',
                          style: AppTextStyles.font12BlackPoppinsLight),
                      verticalSpace(8),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svgs/coin.svg",
                            width: 20.w,
                            height: 20.h,
                          ),
                          horizontalSpace(6),
                          SizedBox(
                            width: 120.w,
                            child: Text(job.salaryRange ?? "N/A",
                                style:
                                AppTextStyles.font14DuskyBluePoppinsSemiBold,
                                overflow: TextOverflow.ellipsis,),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // BlocProvider wraps only the bookmark widget
                BlocProvider(
                  create: (_) =>
                  getIt<DeveloperSingleJobBookmarkCubit>()..bookmarkJob(job.id!),
                  child: DeveloperJobBookmarkBlocBuilder(postId: job.id!),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
