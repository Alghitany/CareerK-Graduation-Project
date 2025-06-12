import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/model/job_details_response.dart';

part 'job_details_state.freezed.dart';

@freezed
class JobDetailsState with _$JobDetailsState {
  const factory JobDetailsState.initial() = _Initial;

  const factory JobDetailsState.loading() = JobDetailsLoading;

  const factory JobDetailsState.success(JobDetailsResponse jobDetails) =
      JobDetailsSuccess;

  const factory JobDetailsState.error({required String error}) =
      JobDetailsError;
}
