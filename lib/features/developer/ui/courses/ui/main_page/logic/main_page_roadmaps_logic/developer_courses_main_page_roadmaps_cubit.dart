import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_courses_main_page_roadmaps_repo.dart';
import 'developer_courses_main_page_roadmaps_state.dart';

class DeveloperCoursesMainPageRoadmapsCubit
    extends Cubit<DeveloperCoursesMainPageRoadmapsState> {
  final DeveloperCoursesMainPageRoadmapsRepo _repo;

  DeveloperCoursesMainPageRoadmapsCubit(this._repo)
      : super(const DeveloperCoursesMainPageRoadmapsState.initial());

  void getDeveloperCoursesMainPageRoadmaps() async {
    emit(const DeveloperCoursesMainPageRoadmapsState.loading());
    final response = await _repo.getDeveloperCoursesMainPageRoadmaps();

    response.when(
      success: (roadmaps) {
        emit(DeveloperCoursesMainPageRoadmapsState.success(roadmaps));
      },
      failure: (error) {
        emit(DeveloperCoursesMainPageRoadmapsState.error(
            error: error.apiErrorModel.message ?? 'Failed to load data'));
      },
    );
  }
}
