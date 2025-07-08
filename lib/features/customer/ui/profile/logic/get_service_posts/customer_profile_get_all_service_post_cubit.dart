import 'package:carrerk/features/customer/ui/profile/data/repo/get_service_posts_repo/customer_profile_get_all_service_post_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'customer_profile_get_all_service_post_state.dart';

class CustomerProfileGetAllServicePostCubit
    extends Cubit<CustomerProfileGetAllServicePostState> {
  final CustomerProfileGetAllServicePostRepo _repo;

  CustomerProfileGetAllServicePostCubit(this._repo)
      : super(const CustomerProfileGetAllServicePostState.initial());

  Future<void> getAllServicePosts() async {
    emit(const CustomerProfileGetAllServicePostState.loading());

    final response = await _repo.getAllCustomerServicePosts();

    response.when(
      success: (posts) {
        emit(CustomerProfileGetAllServicePostState.success(posts));
      },
      failure: (errorHandler) {
        emit(CustomerProfileGetAllServicePostState.error(errorHandler));
      },
    );
  }
}
