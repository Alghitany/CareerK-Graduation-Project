import 'package:carrerk/features/customer/profile/data/model/customer_profile_all_service_posts/customer_profile_all_service_posts_response_body.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_all_job_posts_logic/customer_profile_all_job_posts_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_all_job_posts_logic/customer_profile_all_service_posts_state.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/all_jobs_posts/all_job_posts_list_shimmer.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/all_jobs_posts/all_jobs_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/theming/styles.dart';

class ProfileAllJobPostsBlocBuilder extends StatelessWidget {
  const ProfileAllJobPostsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileAllServicePostsCubit,
        CustomerProfileAllServicePostsState>(
      buildWhen: (previous, current) =>
          current is CustomerProfileAllServicePostsLoading ||
          current is CustomerProfileAllServicePostsSuccess ||
          current is CustomerProfileAllServicePostsError,
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

  Widget setupSuccess(CustomerProfileAllServicePostsResponseBody data) {
    if (data.posts.isEmpty) {
      return Center(
        child: Text(
          'No job posts available.',
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
      );
    }

    return AllJobsList(jobs: data.posts);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
