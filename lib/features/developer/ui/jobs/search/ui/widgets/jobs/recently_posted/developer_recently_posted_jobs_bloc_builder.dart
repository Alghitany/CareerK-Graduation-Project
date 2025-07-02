import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/developer_jobs_recently_posted_models/developer_jobs_recently_posted_response_body.dart';
import '../../../../logic/developer_jobs_recently_posted_logic/developer_jobs_recently_posted_cubit.dart';
import '../../../../logic/developer_jobs_recently_posted_logic/developer_jobs_recently_posted_state.dart';
import 'developer_recently_posted_jobs_list.dart';
import 'developer_recently_posted_jobs_shimmer.dart';

class DeveloperRecentlyPostedJobsBlocBuilder extends StatelessWidget {
  const DeveloperRecentlyPostedJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperJobsRecentlyPostedCubit,
        DeveloperJobsRecentlyPostedState>(
      buildWhen: (previous, current) =>
          current is RecentlyPostedLoading ||
          current is RecentlyPostedSuccess ||
          current is RecentlyPostedError,
      builder: (context, state) {
        return state.maybeWhen(
          recentlyPostedLoading: () => setupLoading(),
          recentlyPostedSuccess: (jobs) => setupSuccess(jobs),
          recentlyPostedError: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const DeveloperRecentlyPostedJobsShimmer();
  }

  Widget setupSuccess(List<DeveloperJobsRecentlyPostedResponseBody> jobs) {
    return DeveloperRecentlyPostedJobsList(jobs: jobs);
  }

  Widget setupError(String error) {
    return Center(child: Text(error));
  }
}
