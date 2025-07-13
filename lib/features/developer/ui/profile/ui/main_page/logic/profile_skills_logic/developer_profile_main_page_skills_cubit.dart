import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_profile_main_page_skills_repo.dart';
import 'developer_profile_main_page_skills_state.dart';

class DeveloperProfileMainPageSkillsCubit
    extends Cubit<DeveloperProfileMainPageSkillsState> {
  final DeveloperProfileMainPageSkillsRepo _repo;

  DeveloperProfileMainPageSkillsCubit(this._repo)
      : super(const DeveloperProfileMainPageSkillsState.initial());

  Future<void> fetchDeveloperProfileMainPageSkills() async {
    emit(const DeveloperProfileMainPageSkillsState.loading());

    final response = await _repo.getDeveloperProfileMainPageSkills();

    response.when(
      success: (data) => emit(
        DeveloperProfileMainPageSkillsState.success(data),
      ),
      failure: (error) => emit(
        DeveloperProfileMainPageSkillsState.error(
          error: error.apiErrorModel.message ?? 'Failed to load skills',
        ),
      ),
    );
  }
}
