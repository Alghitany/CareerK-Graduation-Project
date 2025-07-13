import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_community_tags_repo.dart';
import 'developer_community_tags_state.dart';

class DeveloperCommunityTagsCubit extends Cubit<DeveloperCommunityTagsState> {
  final DeveloperCommunityTagsRepo _repo;

  DeveloperCommunityTagsCubit(this._repo)
      : super(const DeveloperCommunityTagsState.initial());

  Future<void> getCommunityTags() async {
    emit(const DeveloperCommunityTagsState.loading());

    final response = await _repo.getCommunityTags();

    response.when(
      success: (result) {
        emit(DeveloperCommunityTagsState.success(result.tags));
      },
      failure: (error) {
        emit(DeveloperCommunityTagsState.error(
          error: error.apiErrorModel.message ?? "Failed to load community tags",
        ));
      },
    );
  }
}
