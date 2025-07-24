import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../core/networking/api_error_model.dart';
import '../../data/models/developer_profile_jobs_bookmarked_models/developer_profile_jobs_bookmarked_response_body.dart';
import '../../logic/developer_profile_jobs_logic/developer_profile_jobs_bookmarked_cubit.dart';
import '../../logic/developer_profile_jobs_logic/developer_profile_jobs_bookmarked_state.dart';
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
          error: (apiErrorModel) => _buildError(apiErrorModel),
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

  Widget _buildError(ApiErrorModel apiErrorModel) {
    return Center(
      child: Text("Error: ${apiErrorModel.getAllErrorMessages()}"),
    );
  }
}
