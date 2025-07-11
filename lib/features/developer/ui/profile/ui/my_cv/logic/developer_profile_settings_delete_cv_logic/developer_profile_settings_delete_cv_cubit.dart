import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/developer_profile_settings_delete_cv/developer_profile_settings_delete_cv_request_body.dart';
import '../../data/repos/developer_profile_settings_delete_cv_repo.dart';
import 'developer_profile_settings_delete_cv_state.dart';

class DeveloperProfileSettingsDeleteCVCubit
    extends Cubit<DeveloperProfileSettingsDeleteCVState> {
  final DeveloperProfileSettingsDeleteCVRepo _repo;

  DeveloperProfileSettingsDeleteCVCubit(this._repo)
      : super(const DeveloperProfileSettingsDeleteCVState.initial());

  Future<void> deleteCV(
      DeveloperProfileSettingsDeleteCVRequestBody body) async {
    emit(const DeveloperProfileSettingsDeleteCVState.loading());

    final result = await _repo.deleteMyCV(body);

    result.when(
      success: (data) {
        emit(DeveloperProfileSettingsDeleteCVState.success(data));
      },
      failure: (error) {
        emit(DeveloperProfileSettingsDeleteCVState.error(
          error: error.apiErrorModel.message ?? "Unknown error",
        ));
      },
    );
  }
}
