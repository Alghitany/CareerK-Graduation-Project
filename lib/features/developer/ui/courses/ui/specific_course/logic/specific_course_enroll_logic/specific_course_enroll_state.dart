import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/specific_course_enroll_models/specific_course_enroll_response.dart';

part 'specific_course_enroll_state.freezed.dart';

@freezed
class SpecificCourseEnrollState with _$SpecificCourseEnrollState {
  const factory SpecificCourseEnrollState.initial() = _Initial;

  const factory SpecificCourseEnrollState.loading() =
      SpecificCourseEnrollLoading;

  const factory SpecificCourseEnrollState.success(
    SpecificCourseEnrollResponse data,
  ) = SpecificCourseEnrollSuccess;

  const factory SpecificCourseEnrollState.error({String? error}) =
      SpecificCourseEnrollError;
}
