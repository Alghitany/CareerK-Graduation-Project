import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/developer_courses_roadmaps_repo.dart';
import 'developer_courses_roadmaps_state.dart';

class DeveloperCoursesRoadmapsCubit extends Cubit<DeveloperCoursesRoadmapsState> {
  final DeveloperCoursesRoadmapsRepo _repo;

  DeveloperCoursesRoadmapsCubit(this._repo)
      : super(const DeveloperCoursesRoadmapsState.initial());

  void getDeveloperCoursesRoadmaps() async {
    emit(const DeveloperCoursesRoadmapsState.loading());
    final response = await _repo.getDeveloperCoursesRoadmaps();

    response.when(
      success: (roadmaps) {
        emit(DeveloperCoursesRoadmapsState.success(roadmaps));
      },
      failure: (errorHandler) {
        emit(DeveloperCoursesRoadmapsState.error(errorHandler));
      },
    );
  }
}
