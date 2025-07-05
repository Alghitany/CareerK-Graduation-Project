import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/model/company_home_see_resume_response_body.dart';
import '../data/repo/company_home_see_resume_repo.dart';
import 'company_home_see_resume_state.dart';

class CompanyHomeSeeResumeCubit
    extends Cubit<CompanyHomeSeeResumeState<CompanyHomeSeeResumeResponseBody>> {
  final CompanyHomeSeeResumeRepo _repo;

  CompanyHomeSeeResumeCubit(this._repo)
      : super(const CompanyHomeSeeResumeState.initial());

  Future<void> getCompanyHomeSeeResumeData(
      {required String developerId}) async {
    emit(const CompanyHomeSeeResumeState.loading());
    final result = await _repo.getCompanyHomeSeeResume(developerId);
    result.when(
      success: (data) {
        emit(CompanyHomeSeeResumeState.success(data));
      },
      failure: (error) {
        emit(CompanyHomeSeeResumeState.error(
            error: error.apiErrorModel.message ?? 'Unknown error'));
      },
    );
  }
}
