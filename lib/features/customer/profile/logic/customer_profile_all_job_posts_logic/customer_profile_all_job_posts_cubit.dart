import 'package:carrerk/features/customer/profile/data/repo/customer_profile_all_service_posts_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_profile_all_service_posts_state.dart';

class CustomerProfileAllServicePostsCubit
    extends Cubit<CustomerProfileAllServicePostsState> {
  final CustomerProfileAllServicePostsRepo _repo;

  CustomerProfileAllServicePostsCubit(this._repo)
      : super(const CustomerProfileAllServicePostsState.initial());

  void getCustomerAllServicePosts() async {
    emit(const CustomerProfileAllServicePostsState.loading());

    final response = await _repo.getCustomerAllServicePosts();

    response.when(
      success: (servicePosts) {
        emit(CustomerProfileAllServicePostsState.success(servicePosts));
      },
      failure: (error) {
        emit(CustomerProfileAllServicePostsState.error(
            error: error.apiErrorModel.message ?? 'Failed to load data'));
      },
    );
  }
}
