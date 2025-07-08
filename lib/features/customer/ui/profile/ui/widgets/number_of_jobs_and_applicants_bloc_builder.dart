import 'package:carrerk/features/customer/ui/home/logic/customer_home_state.dart';
import 'package:carrerk/features/customer/ui/profile/data/model/get_service_posts_model/customer_profile_get_all_service_post_response_body.dart';
import 'package:carrerk/features/customer/ui/profile/logic/get_service_posts/customer_profile_get_all_service_post_cubit.dart';
import 'package:carrerk/features/customer/ui/profile/logic/get_service_posts/customer_profile_get_all_service_post_state.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/number_of_applicant.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/number_of_jobs_and_applicants_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberOfJobsAndApplicantsBlocBuilder extends StatelessWidget {
  final int applicantsCount;

  const NumberOfJobsAndApplicantsBlocBuilder({
    super.key,
    required this.applicantsCount,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileGetAllServicePostCubit,
        CustomerProfileGetAllServicePostState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _setupLoading(),
          success: (data) => _setupSuccess(data),
          error: (error) => _setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _setupLoading() {
    return const NumberOfJobsAndApplicantsShimmer();
  }

  Widget _setupSuccess(CustomerProfileGetAllServicePostResponseBody data) {
    return NumberOfJobsAndApplicants(
      jobsCount: data.total,
      applicantsCount: applicantsCount,
    );
  }

  Widget _setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
