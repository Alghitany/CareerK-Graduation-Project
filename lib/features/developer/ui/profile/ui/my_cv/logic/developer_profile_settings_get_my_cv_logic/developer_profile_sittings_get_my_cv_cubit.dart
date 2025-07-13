import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/developer_profile_settings_get_my_cv_models/developer_profile_settings_get_my_cv_response_body.dart';
import '../../data/repos/developer_profile_sittings_get_my_cv_repo.dart';
import 'developer_profile_sittings_get_my_cv_state.dart';

class DeveloperProfileSettingsGetMyCVCubit
    extends Cubit<DeveloperProfileSettingsGetMyCVState> {
  final DeveloperProfileSettingsGetMyCVRepo _repo;

  DeveloperProfileSettingsGetMyCVCubit(this._repo)
      : super(const DeveloperProfileSettingsGetMyCVState.initial());

  DeveloperProfileSettingsGetMyCVResponseBody? _cvData;

  /// ✅ Call this to fetch CVs from API:
  Future<void> getMyCV() async {
    emit(const DeveloperProfileSettingsGetMyCVState.loading());

    final result = await _repo.getMyCV();
    result.when(
      success: (data) {
        _cvData = data;
        emit(DeveloperProfileSettingsGetMyCVState.success(data));
      },
      failure: (errorHandler) {
        emit(DeveloperProfileSettingsGetMyCVState.error(
          error: errorHandler.apiErrorModel.message ?? 'Unknown error',
        ));
      },
    );
  }

  /// ✅ Get Uploaded CV URL
  String get uploadedCVUrl => _cvData?.uploadedCV ?? '';

  /// ✅ Get Generated CV URL
  String get generatedCVUrl => _cvData?.generatedCV ?? '';
}
