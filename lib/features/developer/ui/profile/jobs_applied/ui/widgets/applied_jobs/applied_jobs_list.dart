import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/features/developer/ui/profile/jobs_applied/logic/developer_job_withdraw_logic/developer_job_withdraw_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/helpers/extensions.dart';
import '../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../core/routing/app_argument.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../core/theming/styles.dart';
import '../../../data/models/developer_profile_applied_jobs_models/developer_profile_applied_jobs_response_body.dart';

class AppliedJobsList extends StatelessWidget {
  final List<JobApplication> jobApplications;

  const AppliedJobsList({super.key, required this.jobApplications});

  @override
  Widget build(BuildContext context) {
    if (jobApplications.isEmpty) {
      return const Center(child: Text('No applied jobs found.'));
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 8.h),
      itemCount: jobApplications.length,
      itemBuilder: (context, index) {
        final job = jobApplications[index];
        final status = (job.status ?? '').toLowerCase();

        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.developerJobsJobDetailsScreen,
              arguments: AppArgument(jobId: job.jobId),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 16.h),
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 👇 Image (unchanged)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.asset(
                    'assets/images/recommended_job.png',
                    width: 88.w,
                    height: 88.h,
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(8),
                // Job Details & Status/Withdraw
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(job.jobTitle ?? 'No title',
                          style: AppTextStyles.font14BlackPoppinsSemiBold),
                      verticalSpace(4),
                      Text(job.name ?? 'No name',
                          style: AppTextStyles.font12BlackPoppinsLight),
                      verticalSpace(6),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svgs/coin.svg",
                            width: 18.w,
                            height: 18.h,
                          ),
                          horizontalSpace(6),
                          Flexible(
                            child: Text(job.expectedSalary ?? '',
                                style: AppTextStyles
                                    .font14DuskyBluePoppinsSemiBold,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                      verticalSpace(8),
                      Row(
                        children: [
                          if (status == 'accepted') ...[
                            Text(
                              "Accepted",
                              style:
                                  AppTextStyles.font12CloverGreenPoppinsMedium,
                            ),
                            horizontalSpace(4),
                            Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorsManager.cloverGreen,
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 18,
                                )),
                          ] else if (status == 'rejected') ...[
                            Text(
                              "Rejected",
                              style:
                                  AppTextStyles.font12ArtyClickRedPoppinsMedium,
                            ),
                            horizontalSpace(4),
                            SvgPicture.asset(
                              'assets/svgs/rejected_status.svg',
                              width: 18.w,
                              height: 18.h,
                            ),
                          ] else ...[
                            Text(
                              '${_capitalize(job.status ?? 'pending')}...',
                              style: AppTextStyles
                                  .font12SchoolBusYellowPoppinsMedium,
                            ),
                            horizontalSpace(4),
                            const Icon(
                              Icons.hourglass_bottom_outlined,
                              color: ColorsManager.schoolBusYellow,
                              size: 18,
                            )
                          ],
                          const Spacer(),
                          if (status == 'pending' || status == 'accepted')
                            TextButton(
                              onPressed: () {
                                context
                                    .read<DeveloperJobWithdrawCubit>()
                                    .withdrawJobApplication(job.id!);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    ColorsManager.primaryWildBlueYonder,
                                minimumSize: Size(80.w, 32.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 4.h),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                              child: Text(
                                'Withdraw',
                                style: AppTextStyles.font12WhitePoppinsMedium,
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _capitalize(String s) =>
      s.isNotEmpty ? s[0].toUpperCase() + s.substring(1).toLowerCase() : s;
}
