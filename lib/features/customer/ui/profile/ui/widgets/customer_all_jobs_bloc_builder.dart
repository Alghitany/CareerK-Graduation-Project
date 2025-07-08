import 'package:carrerk/features/customer/ui/home/logic/customer_home_state.dart';
import 'package:carrerk/features/customer/ui/profile/data/model/get_service_posts_model/customer_profile_get_all_service_post_response_body.dart';
import 'package:carrerk/features/customer/ui/profile/logic/get_service_posts/customer_profile_get_all_service_post_cubit.dart';
import 'package:carrerk/features/customer/ui/profile/logic/get_service_posts/customer_profile_get_all_service_post_state.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/all_jobs_list.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/all_jobs_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerAllJobsBlocBuilder extends StatelessWidget {
  const CustomerAllJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileGetAllServicePostCubit,
        CustomerProfileGetAllServicePostState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (message) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const AllJobsShimmer();
  }

  Widget setupSuccess(CustomerProfileGetAllServicePostResponseBody data) {
    print('✅ Posts received: ${data.posts.length}');
    if (data.posts.isEmpty) {
      return const Center(child: Text("No services found"));
    }
    return AllJobsList(posts: data.posts);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
