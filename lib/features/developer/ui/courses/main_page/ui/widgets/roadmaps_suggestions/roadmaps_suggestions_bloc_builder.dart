import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/main_page_roadmaps_models/developer_courses_main_page_roadmaps_response_model.dart';
import '../../../logic/main_page_roadmaps_logic/developer_courses_main_page_roadmaps_cubit.dart';
import '../../../logic/main_page_roadmaps_logic/developer_courses_main_page_roadmaps_state.dart';
import 'roadmaps_suggestions.dart';
import 'roadmaps_suggestions_shimmer.dart';

class RoadmapsSuggestionsBlocBuilder extends StatelessWidget {
  const RoadmapsSuggestionsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesMainPageRoadmapsCubit,
        DeveloperCoursesMainPageRoadmapsState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesMainPageRoadmapsLoading ||
          current is DeveloperCoursesMainPageRoadmapsSuccess ||
          current is DeveloperCoursesMainPageRoadmapsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (roadmaps) => setupSuccess(roadmaps),
          error: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const RoadmapsSuggestionsShimmer();
  }

  Widget setupSuccess(
      List<DeveloperCoursesMainPageRoadmapsResponseModel> roadmaps) {
    return RoadmapsSuggestions(roadmaps: roadmaps);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
