import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/specific_community_repo.dart';
import 'specific_community_state.dart';

class SpecificCommunityCubit extends Cubit<SpecificCommunityState> {
  final SpecificCommunityRepo _repo;

  SpecificCommunityCubit(this._repo)
      : super(const SpecificCommunityState.initial());

  Future<void> getSpecificCommunity(String groupId) async {
    emit(const SpecificCommunityState.loading());

    final response = await _repo.getSpecificCommunity(groupId);

    response.when(
      success: (result) {
        emit(SpecificCommunityState.success(result.group));
      },
      failure: (error) {
        emit(SpecificCommunityState.error(
          error: error.apiErrorModel.message ?? "Failed to load community",
        ));
      },
    );
  }
}
