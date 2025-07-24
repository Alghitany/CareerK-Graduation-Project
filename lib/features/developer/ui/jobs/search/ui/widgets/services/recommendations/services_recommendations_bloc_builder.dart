import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/networking/api_error_model.dart';
import '../../../../../../../data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';
import '../../../../../../../logic/developer_recommendations_logic/developer_recommendations_cubit.dart';
import '../../../../../../../logic/developer_recommendations_logic/developer_recommendations_state.dart';
import 'services_recommendations_list.dart';
import 'services_recommendations_loading.dart';

class ServicesRecommendationsBlocBuilder extends StatelessWidget {
  const ServicesRecommendationsBlocBuilder({super.key});

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
          recommendationsLoading: () => setupLoading(),
          recommendationsSuccess: (data) => setupSuccess(data),
          recommendationsError: (apiErrorModel) => setupError(apiErrorModel),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const ServicesRecommendationsLoading();
  }

  Widget setupSuccess(DeveloperRecommendationsResponseBody data) {
    return ServicesRecommendationsList(
        services: data.serviceRecommendations ?? []);
  }

  Widget setupError(ApiErrorModel apiErrorModel) {
    return Center(child: Text(apiErrorModel.getAllErrorMessages()));
  }
}
