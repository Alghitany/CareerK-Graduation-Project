import 'package:carrerk/features/customer/profile/data/model/customer_profile_all_service_posts/customer_profile_all_service_posts_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/networking/api_error_model.dart';

part 'customer_profile_all_service_posts_state.freezed.dart';

@freezed
class CustomerProfileAllServicePostsState
    with _$CustomerProfileAllServicePostsState {
  const factory CustomerProfileAllServicePostsState.initial() =
      _CustomerProfileAllServicePostsInitial;

  const factory CustomerProfileAllServicePostsState.loading() =
      CustomerProfileAllServicePostsLoading;

  const factory CustomerProfileAllServicePostsState.success(
    CustomerProfileAllServicePostsResponseBody response,
  ) = CustomerProfileAllServicePostsSuccess;

  const factory CustomerProfileAllServicePostsState.error(ApiErrorModel apiErrorModel) = CustomerProfileAllServicePostsError;
}
