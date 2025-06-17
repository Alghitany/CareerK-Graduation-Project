import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/developer_courses_and_jobs_main_page_profile_repo.dart';
import 'developer_courses_and_jobs_main_page_profile_state.dart';

class DeveloperCoursesAndJobsMainPageProfileCubit extends Cubit<DeveloperCoursesAndJobsMainPageProfileState> {
  final DeveloperCoursesAndJobsMainPageProfileRepo _repo;

  DeveloperCoursesAndJobsMainPageProfileCubit(this._repo)
      : super(const DeveloperCoursesAndJobsMainPageProfileState.initial());

  void getDeveloperCoursesMainPageProfile() async {
    emit(const DeveloperCoursesAndJobsMainPageProfileState.loading());
    final response = await _repo.getDeveloperCoursesMainPageProfile();

    response.when(
      success: (profileResponseModel) {
        emit(DeveloperCoursesAndJobsMainPageProfileState.success(profileResponseModel));
      },
      failure: (errorHandler) {
        emit(DeveloperCoursesAndJobsMainPageProfileState.error(errorHandler));
      },
    );
  }
}
