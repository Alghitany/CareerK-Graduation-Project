import 'package:carrerk/features/customer/profile/data/repo/customer_profile_applicants_number_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_profile_applicants_number_state.dart';

class CustomerProfileApplicantsNumberCubit
    extends Cubit<CustomerProfileApplicantsNumberState> {
  final CustomerProfileApplicantsNumberRepo _repo;

  CustomerProfileApplicantsNumberCubit(this._repo)
      : super(const CustomerProfileApplicantsNumberState.initial());

  Future<void> getApplicantsNumber() async {
    emit(const CustomerProfileApplicantsNumberState.loading());

    final response = await _repo.getCustomerApplicantsNumber();
    response.when(
      success: (data) =>
          emit(CustomerProfileApplicantsNumberState.success(data)),
      failure: (errorHandler) =>
          emit(CustomerProfileApplicantsNumberState.error('errorr')),
    );
  }
}
