import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_tags_home_main_page_repo.dart';
import 'developer_tags_home_main_page_state.dart';

class DeveloperTagsHomeMainPageCubit
    extends Cubit<DeveloperTagsHomeMainPageState> {
  final DeveloperTagsHomeMainPageRepo _repo;

  DeveloperTagsHomeMainPageCubit(this._repo)
      : super(const DeveloperTagsHomeMainPageState.initial());

  Future<void> fetchDeveloperTags() async {
    emit(const DeveloperTagsHomeMainPageState.loading());

    final response = await _repo.getDeveloperTracks();
    response.when(
      success: (data) => emit(
        DeveloperTagsHomeMainPageState.success(data),
      ),
      failure: (error) => emit(
        DeveloperTagsHomeMainPageState.error(
          error: error.apiErrorModel.message ?? 'Failed to load developer tags',
        ),
      ),
    );
  }
}
