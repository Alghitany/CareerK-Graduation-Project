import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/repos/company_profile_repo.dart';
import 'company_profile_state.dart';

class CompanyProfileCubit extends Cubit<CompanyProfileState> {
  final CompanyProfileRepo _repo;

  CompanyProfileCubit(this._repo) : super(const CompanyProfileState.initial());

  void getCompanyProfile() async {
    emit(const CompanyProfileState.loading());
    final response = await _repo.getCompanyProfile();

    response.when(
      success: (profile) {
        emit(CompanyProfileState.success(profile));
      },
      failure: (error) {
        emit(CompanyProfileState.error(
            error: error.apiErrorModel.message ?? 'Unknown error'));
      },
    );
  }
}
