import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/developer_profile_applied_jobs_logic/developer_profile_applied_jobs_cubit.dart';
import 'widgets/applied_jobs_bloc_builder.dart';
import 'widgets/developer_job_withdraw_bloc_listener.dart';
import 'widgets/developer_service_delete_bloc_listener.dart';

class DeveloperProfileJobsAndServicesAppliedScreen extends StatelessWidget {
  const DeveloperProfileJobsAndServicesAppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 0.h),
              child: Column(
                children: [
                  const AppBackIcon(),
                  Text(
                    'Job Applied',
                    style: AppTextStyles
                        .font24SecondaryWildBlueYonderPoppinsSemiBold,
                  ),
                  verticalSpace(8),
                  const AppliedJobsBlocBuilder(),
                ],
              ),
            ),
            DeveloperJobWithdrawBlocListener(
              onWithdrawSuccess: () {
                context
                    .read<DeveloperProfileAppliedJobsCubit>()
                    .fetchAppliedJobs();
              },
            ),
            DeveloperServiceDeleteBlocListener(
              onDeleteSuccess: () {
                context
                    .read<DeveloperProfileAppliedJobsCubit>()
                    .fetchAppliedJobs();
              },
            )
          ],
        ),
      ),
    );
  }
}
