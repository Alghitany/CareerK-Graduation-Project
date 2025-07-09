import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/company_profile_applicants_number_repo.dart';
import 'company_profile_applicants_number_state.dart';

class CompanyProfileApplicantsNumberCubit
    extends Cubit<CompanyProfileApplicantsNumberState> {
  final CompanyProfileApplicantsNumberRepo _repo;

  CompanyProfileApplicantsNumberCubit(this._repo)
      : super(const CompanyProfileApplicantsNumberState.initial());

  Future<void> getApplicantsNumber() async {
    emit(const CompanyProfileApplicantsNumberState.loading());

    final response = await _repo.companyProfileGetApplicantsNumber();
    response.when(
      success: (data) =>
          emit(CompanyProfileApplicantsNumberState.success(data)),
      failure: (errorHandler) =>
          emit(CompanyProfileApplicantsNumberState.error(errorHandler)),
    );
  }
}
