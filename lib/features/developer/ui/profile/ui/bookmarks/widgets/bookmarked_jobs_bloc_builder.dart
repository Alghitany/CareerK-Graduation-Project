import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/developer_profile_jobs_bookmarked_models/developer_profile_jobs_bookmarked_response_body.dart';
import '../logic/developer_profile_jobs_logic/developer_profile_jobs_bookmarked_cubit.dart';
import '../logic/developer_profile_jobs_logic/developer_profile_jobs_bookmarked_state.dart';
import 'jobs/bookmarked_jobs_list.dart';
import 'jobs/bookmarked_jobs_list_shimmer.dart';

class BookmarkedJobsBlocBuilder extends StatelessWidget {
  const BookmarkedJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileJobsBookmarkedCubit,
        DeveloperProfileJobsBookmarkedState>(
      buildWhen: (previous, current) =>
          current is DeveloperProfileJobsBookmarkedLoading ||
          current is DeveloperProfileJobsBookmarkedSuccess ||
          current is DeveloperProfileJobsBookmarkedError,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const BookmarkedJobsListShimmer(),
          success: (data) => _buildSuccess(data),
          error: (error) => _buildError(error),
        );
      },
    );
  }

  Widget _buildSuccess(List<DeveloperProfileJobsBookmarkedResponseBody> data) {
    if (data.isEmpty) {
      return const Center(child: Text("No bookmarked jobs found."));
    }

    return BookmarkedJobsList(jobs: data);
  }

  Widget _buildError(String? error) {
    return Center(
      child: Text("Error: ${error ?? 'Unknown error'}"),
    );
  }
}
