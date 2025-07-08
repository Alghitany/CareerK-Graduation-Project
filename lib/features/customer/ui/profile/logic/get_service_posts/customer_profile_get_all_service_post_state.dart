import 'package:carrerk/features/customer/ui/profile/data/model/get_service_posts_model/customer_profile_get_all_service_post_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../../../core/networking/api_error_handler.dart';

part 'customer_profile_get_all_service_post_state.freezed.dart';

@freezed
class CustomerProfileGetAllServicePostState
    with _$CustomerProfileGetAllServicePostState {
  const factory CustomerProfileGetAllServicePostState.initial() =
      _CustomerProfileGetAllServicePostInitial;

  const factory CustomerProfileGetAllServicePostState.loading() =
      CustomerProfileGetAllServicePostLoading;

  const factory CustomerProfileGetAllServicePostState.success(
    CustomerProfileGetAllServicePostResponseBody data,
  ) = CustomerProfileGetAllServicePostSuccess;

  const factory CustomerProfileGetAllServicePostState.error(
    ErrorHandler errorHandler,
  ) = CustomerProfileGetAllServicePostError;
}
