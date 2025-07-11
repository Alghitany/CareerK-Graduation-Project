import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/developer_profile_services_bookmarked_repo.dart';
import 'developer_profile_services_bookmarked_state.dart';

class DeveloperProfileServicesBookmarkedCubit
    extends Cubit<DeveloperProfileServicesBookmarkedState> {
  final DeveloperProfileServicesBookmarkedRepo _repo;

  DeveloperProfileServicesBookmarkedCubit(this._repo)
      : super(const DeveloperProfileServicesBookmarkedState.initial());

  Future<void> getBookmarkedServices() async {
    emit(const DeveloperProfileServicesBookmarkedState.loading());

    final response = await _repo.getBookmarkedServices();

    response.when(
      success: (data) {
        emit(DeveloperProfileServicesBookmarkedState.success(data));
      },
      failure: (errorHandler) {
        emit(DeveloperProfileServicesBookmarkedState.error(
          error: errorHandler.apiErrorModel.message,
        ));
      },
    );
  }
}
