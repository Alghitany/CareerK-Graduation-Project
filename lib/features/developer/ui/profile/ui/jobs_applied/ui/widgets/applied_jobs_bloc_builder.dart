import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/developer_profile_applied_jobs_models/developer_profile_applied_jobs_response_body.dart';
import '../../logic/developer_profile_applied_jobs_logic/developer_profile_applied_jobs_cubit.dart';
import '../../logic/developer_profile_applied_jobs_logic/developer_profile_applied_jobs_state.dart';
import 'applied_jobs/applied_jobs_shimmer.dart';
import 'applied_jobs/job_application/jobs_applications_list.dart';
import 'applied_jobs/service_application/service_applications_list.dart';

class AppliedJobsBlocBuilder extends StatelessWidget {
  const AppliedJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileAppliedJobsCubit,
        DeveloperProfileAppliedJobsState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const AppliedJobsLoadingShimmer();
  }

  Widget setupSuccess(DeveloperProfileAppliedJobsResponseBody data) {
    final jobApplications = data.jobApplications ?? [];
    final serviceApplications = data.serviceApplications ?? [];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Jobs: ",
            style: AppTextStyles.font20DunePoppinsMedium,
          ),
          JobApplicationsList(jobApplications: jobApplications),
          Text(
            "Services: ",
            style: AppTextStyles.font20DunePoppinsMedium,
          ),
          ServiceApplicationsList(serviceApplications: serviceApplications),
        ],
      ),
    );
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
