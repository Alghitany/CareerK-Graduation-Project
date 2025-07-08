import 'package:carrerk/features/customer/ui/profile/data/repo/view_profile_repo/customer_profile_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_profile_state.dart';

class CustomerProfileCubit extends Cubit<CustomerProfileState> {
  final CustomerProfileRepo _customerProfileRepo;

  CustomerProfileCubit(this._customerProfileRepo)
      : super(const CustomerProfileState.initial());

  Future<void> getCustomerProfileData() async {
    emit(const CustomerProfileState.loading());

    final result = await _customerProfileRepo.getCustomerProfileData();

    result.when(
      success: (data) {
        emit(CustomerProfileState.success(data));
      },
      failure: (error) {
        emit(CustomerProfileState.error(
          error: error.apiErrorModel.message ?? 'Something went wrong',
        ));
      },
    );
  }
}
