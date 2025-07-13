import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/developer_profile_settings_update_uploaded_cv_models/developer_profile_settings_update_uploaded_cv_response_body.dart';
import '../../data/repos/developer_profile_settings_update_uploaded_my_cv_repo.dart';
import 'developer_profile_settings_update_uploaded_cv_state.dart';

class DeveloperProfileSettingsUpdateUploadedCVCubit
    extends Cubit<DeveloperProfileSettingsUpdateUploadedCVState> {
  final DeveloperProfileSettingsUpdateUploadedCVRepo _repo;

  DeveloperProfileSettingsUpdateUploadedCVCubit(this._repo)
      : super(const DeveloperProfileSettingsUpdateUploadedCVState.initial());

  Future<void> updateUploadedMyCV(String cvFilePath) async {
    emit(const DeveloperProfileSettingsUpdateUploadedCVState.loading());

    final result = await _repo.updateUploadedCV(cvFilePath: cvFilePath);

    result.when(
      success: (DeveloperProfileSettingsUpdateUploadedCVResponseBody data) {
        emit(DeveloperProfileSettingsUpdateUploadedCVState.success(data));
      },
      failure: (errorHandler) {
        emit(
          DeveloperProfileSettingsUpdateUploadedCVState.error(
            error: errorHandler.apiErrorModel.message ?? "Unknown error",
          ),
        );
      },
    );
  }
}
