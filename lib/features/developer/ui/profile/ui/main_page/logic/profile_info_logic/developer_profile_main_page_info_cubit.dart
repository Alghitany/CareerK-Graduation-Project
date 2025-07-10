import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_profile_main_page_info_repo.dart';
import 'developer_profile_main_page_info_state.dart';

class DeveloperProfileMainPageInfoCubit
    extends Cubit<DeveloperProfileMainPageInfoState> {
  final DeveloperProfileMainPageInfoRepo _repo;

  DeveloperProfileMainPageInfoCubit(this._repo)
      : super(const DeveloperProfileMainPageInfoState.initial());

  Future<void> fetchDeveloperProfileMainPageInfo() async {
    emit(const DeveloperProfileMainPageInfoState.loading());

    final response = await _repo.getDeveloperProfileMainPageInfo();

    response.when(
      success: (data) => emit(
        DeveloperProfileMainPageInfoState.success(data),
      ),
      failure: (error) => emit(
        DeveloperProfileMainPageInfoState.error(
          error: error.apiErrorModel.message ?? 'Failed to load profile info',
        ),
      ),
    );
  }
}
