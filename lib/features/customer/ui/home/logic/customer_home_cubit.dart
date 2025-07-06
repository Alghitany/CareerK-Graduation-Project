import 'package:carrerk/features/customer/ui/home/model/repo/customer_home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_home_state.dart';

class CustomerHomeCubit extends Cubit<CustomerHomeState> {
  final CustomerHomeRepo _customerHomeRepo;

  CustomerHomeCubit(this._customerHomeRepo)
      : super(const CustomerHomeState.initial());

  Future<void> getCustomerHomeData() async {
    emit(const CustomerHomeState.loading());

    final result = await _customerHomeRepo.getCustomerHomeData();

    result.when(
      success: (data) {
        emit(CustomerHomeState.success(data));
      },
      failure: (error) {
        emit(CustomerHomeState.error(
          error: error.apiErrorModel.message ?? 'Something went wrong',
        ));
      },
    );
  }
}
