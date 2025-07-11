import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_profile_courses_bookmarked_repo.dart';
import 'developer_profile_courses_bookmarked_state.dart';

class DeveloperProfileCoursesBookmarkedCubit
    extends Cubit<DeveloperProfileCoursesBookmarkedState> {
  final DeveloperProfileCoursesBookmarkedRepo _repo;

  DeveloperProfileCoursesBookmarkedCubit(this._repo)
      : super(const DeveloperProfileCoursesBookmarkedState.initial());

  Future<void> getBookmarkedCourses() async {
    emit(const DeveloperProfileCoursesBookmarkedState.loading());

    final response = await _repo.getBookmarkedCourses();

    response.when(
      success: (data) {
        emit(DeveloperProfileCoursesBookmarkedState.success(data));
      },
      failure: (errorHandler) {
        emit(DeveloperProfileCoursesBookmarkedState.error(
          error: errorHandler.apiErrorModel.message,
        ));
      },
    );
  }
}
