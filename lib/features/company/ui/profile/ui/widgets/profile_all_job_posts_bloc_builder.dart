import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theming/styles.dart';
import '../../data/models/company_profile_all_jobs_posts_models/company_profile_all_job_posts_response_body.dart';
import '../../logic/company_profile_all_job_posts_logic/company_profile_all_job_posts_cubit.dart';
import '../../logic/company_profile_all_job_posts_logic/company_profile_all_job_posts_state.dart';
import 'all_job_posts/all_job_posts_list.dart';
import 'all_job_posts/all_job_posts_list_shimmer.dart';

class ProfileAllJobPostsBlocBuilder extends StatelessWidget {
  const ProfileAllJobPostsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyProfileAllJobPostsCubit,
        CompanyProfileAllJobPostsState>(
      buildWhen: (previous, current) =>
          current is CompanyProfileAllJobPostsLoading ||
          current is CompanyProfileAllJobPostsSuccess ||
          current is CompanyProfileAllJobPostsError,
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
    return const AllJobPostsListShimmer();
  }

  Widget setupSuccess(CompanyProfileAllJobPostsResponseBody data) {
    if (data.jobs.isEmpty) {
      return Center(
        child: Text(
          'No job posts available.',
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
      );
    }

    return AllJobPostsList(jobPosts: data.jobs);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
