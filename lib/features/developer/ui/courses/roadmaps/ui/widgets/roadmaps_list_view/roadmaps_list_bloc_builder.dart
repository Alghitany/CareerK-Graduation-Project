import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/models/developer_courses_roadmaps_response_body.dart';
import '../../../logic/developer_courses_roadmaps_cubit.dart';
import '../../../logic/developer_courses_roadmaps_state.dart';
import 'roadmaps_list_view.dart';
import 'roadmaps_list_shimmer.dart';

class RoadmapsListBlocBuilder extends StatelessWidget {
  const RoadmapsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesRoadmapsCubit, DeveloperCoursesRoadmapsState>(
      buildWhen: (previous, current) =>
      current is DeveloperCoursesRoadmapsLoading ||
          current is DeveloperCoursesRoadmapsSuccess ||
          current is DeveloperCoursesRoadmapsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (roadmaps) => setupSuccess(roadmaps),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const RoadmapsListShimmer();
  }

  Widget setupSuccess(List<DeveloperCoursesRoadmapsResponseBody> roadmaps) {
    return RoadmapsListView(roadmaps: roadmaps);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
