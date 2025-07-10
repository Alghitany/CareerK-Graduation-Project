import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/generate_models/developer_profile_cv_generate_generated_request_body.dart';
import '../../data/repos/developer_profile_cv_generate_generated_repo.dart';
import 'developer_profile_cv_generate_generated_state.dart';

class DeveloperProfileCVGenerateGeneratedCubit
    extends Cubit<DeveloperProfileCVGenerateGeneratedState> {
  final DeveloperProfileCVGenerateGeneratedRepo _repo;

  DeveloperProfileCVGenerateGeneratedCubit(this._repo)
      : super(const DeveloperProfileCVGenerateGeneratedState.initial());

  Future<void> generateCV({
    required String sessionId,
    required DeveloperProfileCVGenerateGeneratedRequestBody requestBody,
  }) async {
    emit(const DeveloperProfileCVGenerateGeneratedState.loading());

    final response = await _repo.generateCV(
      sessionId: sessionId,
      requestBody: requestBody,
    );

    response.when(
      success: (data) {
        emit(DeveloperProfileCVGenerateGeneratedState.success(data));
      },
      failure: (error) {
        emit(DeveloperProfileCVGenerateGeneratedState.error(
          error: error.apiErrorModel.message ?? 'Failed to generate CV',
        ));
      },
    );
  }
}
