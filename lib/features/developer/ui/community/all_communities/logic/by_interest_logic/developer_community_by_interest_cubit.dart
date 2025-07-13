import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_community_by_interest_repo.dart';
import 'developer_community_by_interest_state.dart';

class DeveloperCommunityByInterestCubit
    extends Cubit<DeveloperCommunityByInterestState> {
  final DeveloperCommunityByInterestRepo _repo;

  DeveloperCommunityByInterestCubit(this._repo)
      : super(const DeveloperCommunityByInterestState.initial());

  Future<void> getCommunitiesByInterest(String tag) async {
    emit(const DeveloperCommunityByInterestState.loading());

    final response = await _repo.getCommunitiesByInterest(tag);

    response.when(
      success: (result) {
        emit(DeveloperCommunityByInterestState.success(result.groups));
      },
      failure: (error) {
        emit(DeveloperCommunityByInterestState.error(
          error: error.apiErrorModel.message ??
              "Failed to load interest-based communities",
        ));
      },
    );
  }
}
