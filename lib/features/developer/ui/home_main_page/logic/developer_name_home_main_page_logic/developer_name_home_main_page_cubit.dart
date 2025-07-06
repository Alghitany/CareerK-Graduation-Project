import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_name_home_main_page_repo.dart';
import 'developer_name_home_main_page_state.dart';

class DeveloperNameHomeMainPageCubit
    extends Cubit<DeveloperNameHomeMainPageState> {
  final DeveloperNameHomeMainPageRepo _repo;

  DeveloperNameHomeMainPageCubit(this._repo)
      : super(const DeveloperNameHomeMainPageState.initial());

  Future<void> fetchDeveloperName() async {
    emit(const DeveloperNameHomeMainPageState.developerNameLoading());

    final response = await _repo.getDeveloperNameHomeMainPage();

    response.when(
      success: (data) => emit(
        DeveloperNameHomeMainPageState.developerNameSuccess(data),
      ),
      failure: (error) => emit(
        DeveloperNameHomeMainPageState.developerNameError(
          error: error.apiErrorModel.message ?? 'Failed to load developer name',
        ),
      ),
    );
  }
}
