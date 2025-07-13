import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/company_profile_all_job_posts_logic/company_profile_all_job_posts_cubit.dart';
import '../../logic/company_profile_all_job_posts_logic/company_profile_all_job_posts_state.dart';
import '../../logic/company_profile_applicants_number_logic/company_profile_applicants_number_cubit.dart';
import '../../logic/company_profile_applicants_number_logic/company_profile_applicants_number_state.dart';
import 'jobs_and_applicants_number/applicants_number.dart';
import 'jobs_and_applicants_number/jobs_and_applicants_number_shimmer.dart';
import 'jobs_and_applicants_number/jobs_number.dart';

class JobsNumberBlocBuilder extends StatelessWidget {
  const JobsNumberBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyProfileAllJobPostsCubit,
        CompanyProfileAllJobPostsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const JobsNumberShimmer(),
          success: (data) => JobsNumber(jobsText: data.jobs?.length.toString() ?? "0"),
          error: (error) => const JobsNumber(jobsText: 'Error'),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

class ApplicantsNumberBlocBuilder extends StatelessWidget {
  const ApplicantsNumberBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyProfileApplicantsNumberCubit,
        CompanyProfileApplicantsNumberState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const ApplicantsNumberShimmer(),
          success: (data) =>
              ApplicantsNumber(applicantsText: data.totalApplicants.toString()),
          error: (error) => const ApplicantsNumber(applicantsText: 'Error'),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
