import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/developer_courses_specific_category_repo.dart';
import 'developer_courses_specific_category_state.dart';

class DeveloperCoursesSpecificCategoryCubit
    extends Cubit<DeveloperCoursesSpecificCategoryState> {
  final DeveloperCoursesSpecificCategoryRepo _repo;

  DeveloperCoursesSpecificCategoryCubit(this._repo)
      : super(const DeveloperCoursesSpecificCategoryState.initial());

  void getDeveloperCoursesSpecificCategory(String trackId) async {
    emit(const DeveloperCoursesSpecificCategoryState.loading());
    final response = await _repo.getDeveloperCoursesSpecificCategory(trackId);

    response.when(
      success: (courses) {
        emit(DeveloperCoursesSpecificCategoryState.success(courses));
      },
      failure: (errorHandler) {
        emit(DeveloperCoursesSpecificCategoryState.error(errorHandler));
      },
    );
  }
}
