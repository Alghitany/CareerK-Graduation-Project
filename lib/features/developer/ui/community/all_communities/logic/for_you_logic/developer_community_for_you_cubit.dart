import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_community_for_you_repo.dart';
import 'developer_community_for_you_state.dart';

class DeveloperCommunityForYouCubit
    extends Cubit<DeveloperCommunityForYouState> {
  final DeveloperCommunityForYouRepo _repo;

  DeveloperCommunityForYouCubit(this._repo)
      : super(const DeveloperCommunityForYouState.initial());

  Future<void> getCommunities() async {
    emit(const DeveloperCommunityForYouState.loading());

    final response = await _repo.getCommunitiesForYou();

    response.when(
      success: (result) {
        emit(DeveloperCommunityForYouState.success(result.groups));
      },
      failure: (error) {
        emit(DeveloperCommunityForYouState.error(
          error: error.apiErrorModel.message ?? "Failed to load communities",
        ));
      },
    );
  }
}
