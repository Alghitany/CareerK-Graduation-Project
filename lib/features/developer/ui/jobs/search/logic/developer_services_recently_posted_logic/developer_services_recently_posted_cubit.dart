import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_services_recently_posted_repo.dart';
import 'developer_services_recently_posted_state.dart';

class DeveloperServicesRecentlyPostedCubit
    extends Cubit<DeveloperServicesRecentlyPostedState> {
  final DeveloperServicesRecentlyPostedRepo _repo;

  DeveloperServicesRecentlyPostedCubit(this._repo)
      : super(const DeveloperServicesRecentlyPostedState.initial());

  Future<void> fetchRecentlyPostedServices() async {
    emit(const DeveloperServicesRecentlyPostedState.recentlyPostedLoading());

    final response = await _repo.getRecentlyPostedServices();

    response.when(
      success: (data) => emit(
        DeveloperServicesRecentlyPostedState.recentlyPostedSuccess(data),
      ),
      failure: (error) => emit(
        DeveloperServicesRecentlyPostedState.recentlyPostedError(
          error: error.apiErrorModel.message ??
              'Failed to load recently posted services',
        ),
      ),
    );
  }
}
