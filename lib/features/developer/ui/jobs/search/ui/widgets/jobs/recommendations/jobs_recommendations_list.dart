import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_choice_chip.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';
import '../../../../../../../data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';
import '../../../../../../../logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';

class JobsRecommendationsList extends StatefulWidget {
  final List<JobRecommendation> jobs;

  const JobsRecommendationsList({super.key, required this.jobs});

  @override
  State<JobsRecommendationsList> createState() =>
      _JobsRecommendationsListState();
}

class _JobsRecommendationsListState extends State<JobsRecommendationsList> {
  final Map<String, bool> _expandedStates = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.jobs.length,
        itemBuilder: (context, index) {
          final job = widget.jobs[index];
          final isExpanded = _expandedStates[job.id] ?? false;

          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.developerJobsJobDetailsScreen,
                arguments: AppArgument(jobId: job.id),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              color: Colors.white,
              elevation: 4,
              margin: EdgeInsets.only(bottom: 16.h),
              child: Padding(
                padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            job.title ?? 'No Title',
                            style:
                                AppTextStyles.font14RangoonGreenPoppinsSemiBold,
                          ),
                        ),
                        BlocProvider(
                          create: (_) =>
                              getIt<DeveloperSingleJobBookmarkCubit>()
                                ..bookmarkJob(job.id!),
                          child:
                              DeveloperJobBookmarkBlocBuilder(postId: job.id!),
                        ),
                      ],
                    ),
                    verticalSpace(4),
                    Text(
                      job.location ?? '',
                      style: AppTextStyles.font10GranitePoppinsRegular,
                    ),
                    verticalSpace(12),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Salary: ',
                            style: AppTextStyles.font14LiverRalewayRegular,
                          ),
                          TextSpan(
                            text: job.salaryRange ?? 'N/A',
                            style:
                                AppTextStyles.font14RangoonGreenRalewayMedium,
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(12),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: isExpanded
                                ? (job.jobDescription ?? '')
                                : (job.jobDescription ?? '').length > 100
                                    ? '${job.jobDescription!.substring(0, 100)}... '
                                    : job.jobDescription ?? '',
                            style: AppTextStyles.font13LiverRalewayMedium,
                          ),
                          if (!isExpanded &&
                              (job.jobDescription?.length ?? 0) > 100)
                            TextSpan(
                              text: 'see more',
                              style: AppTextStyles.font13DuskyBlueRalewayMedium,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => setState(() {
                                      _expandedStates[job.id!] = true;
                                    }),
                            ),
                        ],
                      ),
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
      ),
    );
  }
}
