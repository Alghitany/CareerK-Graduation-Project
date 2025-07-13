import 'package:carrerk/features/customer/profile/data/repo/customer_profile_info_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_profile_info_state.dart';

class CustomerProfileInfoCubit extends Cubit<CustomerProfileInfoState> {
  final CustomerProfileInfoRepo _repo;

  CustomerProfileInfoCubit(this._repo)
      : super(const CustomerProfileInfoState.initial());

  void getCustomerProfileInfo() async {
    emit(const CustomerProfileInfoState.loading());

    final response = await _repo.getCustomerProfile();

    response.when(
      success: (profile) {
        emit(CustomerProfileInfoState.success(profile));
      },
      failure: (error) {
        emit(CustomerProfileInfoState.error(
          error: error.apiErrorModel.message ?? 'Failed to load data',
        ));
      },
    );
  }
}
