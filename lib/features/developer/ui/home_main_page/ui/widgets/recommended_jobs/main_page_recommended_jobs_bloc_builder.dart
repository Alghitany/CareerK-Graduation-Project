import 'package:carrerk/features/developer/ui/home_main_page/ui/widgets/recommended_jobs/main_page_recommended_jobs_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';
import '../../../../../logic/developer_recommendations_logic/developer_recommendations_cubit.dart';
import '../../../../../logic/developer_recommendations_logic/developer_recommendations_state.dart';
import 'main_page_recommended_jobs_list.dart';

class MainPageRecommendedJobsBlocBuilder extends StatelessWidget {
  const MainPageRecommendedJobsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperRecommendationsCubit,
        DeveloperRecommendationsState>(
      buildWhen: (previous, current) =>
          current is RecommendationsLoading ||
          current is RecommendationsSuccess ||
          current is RecommendationsError,
      builder: (context, state) {
        return state.maybeWhen(
          recommendationsLoading: () => _buildLoading(),
          recommendationsSuccess: (data) => _buildSuccess(data),
          recommendationsError: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const JobsRecommendationsLoading();
  }

  Widget _buildSuccess(DeveloperRecommendationsResponseBody data) {
    return MainPageRecommendedJobsList(jobs: data.jobRecommendations ?? []);
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
