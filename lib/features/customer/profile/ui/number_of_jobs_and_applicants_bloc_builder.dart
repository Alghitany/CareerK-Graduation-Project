import 'package:carrerk/features/customer/profile/logic/customer_profile_all_job_posts_logic/customer_profile_all_job_posts_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_all_job_posts_logic/customer_profile_all_service_posts_state.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_applicants_number_logic/customer_profile_applicants_number_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_applicants_number_logic/customer_profile_applicants_number_state.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/jobs_and_applicants_number/applicants_number.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/jobs_and_applicants_number/jobs_and_applicants_number_shimmer.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/jobs_and_applicants_number/jobs_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobsNumberBlocBuilder extends StatelessWidget {
  const JobsNumberBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileAllServicePostsCubit,
        CustomerProfileAllServicePostsState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const JobsNumberShimmer(),
          success: (data) => JobsNumber(jobsText: data.total.toString()),
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
    return BlocBuilder<CustomerProfileApplicantsNumberCubit,
        CustomerProfileApplicantsNumberState>(
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
