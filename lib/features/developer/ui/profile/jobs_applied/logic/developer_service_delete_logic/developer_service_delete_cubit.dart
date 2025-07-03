import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repo/developer_service_delete_repo.dart';
import 'developer_service_delete_state.dart';

class DeveloperServiceDeleteCubit extends Cubit<DeveloperServiceDeleteState> {
  final DeveloperServiceDeleteRepo _repo;

  DeveloperServiceDeleteCubit(this._repo)
      : super(const DeveloperServiceDeleteState.initial());

  Future<void> deleteServiceApplication(String applicationId) async {
    emit(const DeveloperServiceDeleteState.loading());

    final response = await _repo.deleteServiceApplication(applicationId);

    response.when(
      success: (data) => emit(
        DeveloperServiceDeleteState.success(data),
      ),
      failure: (error) => emit(
        DeveloperServiceDeleteState.error(
          error: error.apiErrorModel.message ??
              'Failed to delete service application',
        ),
      ),
    );
  }
}
