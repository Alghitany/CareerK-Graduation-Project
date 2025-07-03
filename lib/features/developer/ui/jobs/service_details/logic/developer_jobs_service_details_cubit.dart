import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo/developer_jobs_service_details_repo.dart';
import 'developer_jobs_service_details_state.dart';

class DeveloperJobsServiceDetailsCubit
    extends Cubit<DeveloperJobsServiceDetailsState> {
  final DeveloperJobsServiceDetailsRepo _repo;

  DeveloperJobsServiceDetailsCubit(this._repo)
      : super(const DeveloperJobsServiceDetailsState.initial());

  Future<void> fetchServiceDetails(String serviceId) async {
    emit(const DeveloperJobsServiceDetailsState.serviceDetailsLoading());

    final response = await _repo.getServiceDetails(serviceId);

    response.when(
      success: (data) =>
          emit(DeveloperJobsServiceDetailsState.serviceDetailsSuccess(data)),
      failure: (error) => emit(
        DeveloperJobsServiceDetailsState.serviceDetailsError(
          error:
              error.apiErrorModel.message ?? 'Failed to load service details',
        ),
      ),
    );
  }
}
