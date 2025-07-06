import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';

part 'developer_recommendations_state.freezed.dart';

@freezed
class DeveloperRecommendationsState with _$DeveloperRecommendationsState {
  const factory DeveloperRecommendationsState.initial() = _Initial;

  const factory DeveloperRecommendationsState.recommendationsLoading() =
      RecommendationsLoading;

  const factory DeveloperRecommendationsState.recommendationsSuccess(
    DeveloperRecommendationsResponseBody data,
  ) = RecommendationsSuccess;

  const factory DeveloperRecommendationsState.recommendationsError({
    required String error,
  }) = RecommendationsError;
}
