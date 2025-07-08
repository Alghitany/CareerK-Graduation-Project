import 'package:carrerk/core/networking/api_error_handler.dart';
import 'package:carrerk/features/customer/ui/profile/data/model/get_applicants_model/total_applicants_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_applicants_state.freezed.dart';

@freezed
class TotalApplicantsState with _$TotalApplicantsState {
  const factory TotalApplicantsState.initial() = _Initial;
  const factory TotalApplicantsState.loading() = _Loading;
  const factory TotalApplicantsState.success(TotalApplicantsResponse data) =
      _Success;
  const factory TotalApplicantsState.error(ErrorHandler error) = _Error;
}
