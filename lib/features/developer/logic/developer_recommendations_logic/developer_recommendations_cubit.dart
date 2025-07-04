import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_recommendations_repo.dart';
import 'developer_recommendations_state.dart';

class DeveloperRecommendationsCubit
    extends Cubit<DeveloperRecommendationsState> {
  final DeveloperRecommendationsRepo _repo;

  DeveloperRecommendationsCubit(this._repo)
      : super(const DeveloperRecommendationsState.initial());

  Future<void> fetchRecommendations() async {
    emit(const DeveloperRecommendationsState.recommendationsLoading());

    final response = await _repo.getDeveloperRecommendations();

    response.when(
      success: (data) => emit(
        DeveloperRecommendationsState.recommendationsSuccess(data),
      ),
      failure: (error) => emit(
        DeveloperRecommendationsState.recommendationsError(
          error:
              error.apiErrorModel.message ?? 'Failed to load recommendations',
        ),
      ),
    );
  }
}
