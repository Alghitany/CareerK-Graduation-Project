import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_courses_home_main_page_repo.dart';
import 'developer_courses_home_main_page_state.dart';

class DeveloperCoursesHomeMainPageCubit
    extends Cubit<DeveloperCoursesHomeMainPageState> {
  final DeveloperCoursesHomeMainPageRepo _repo;

  DeveloperCoursesHomeMainPageCubit(this._repo)
      : super(const DeveloperCoursesHomeMainPageState.initial());

  Future<void> fetchDeveloperCourses(String developerId) async {
    emit(const DeveloperCoursesHomeMainPageState.developerCoursesLoading());

    final response = await _repo.getDeveloperCoursesHomeMainPage(developerId);

    response.when(
      success: (data) => emit(
        DeveloperCoursesHomeMainPageState.developerCoursesSuccess(data),
      ),
      failure: (error) => emit(
        DeveloperCoursesHomeMainPageState.developerCoursesError(
          error:
              error.apiErrorModel.message ?? 'Failed to load developer courses',
        ),
      ),
    );
  }
}
