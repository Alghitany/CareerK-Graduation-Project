import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/specific_course_lectures_models/specific_course_lectures_response_body.dart';
import '../../../logic/specific_course_lectures_logic/specific_course_lectures_cubit.dart';
import '../../../logic/specific_course_lectures_logic/specific_course_lectures_state.dart';
import 'course_lectures_tab/course_lectures_tab.dart';
import 'course_lectures_tab/course_lectures_tab_shimmer.dart';

class SpecificCourseLecturesBlocBuilder extends StatelessWidget {
  final String courseId;

  const SpecificCourseLecturesBlocBuilder({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecificCourseLecturesCubit,
        SpecificCourseLecturesState>(
      buildWhen: (previous, current) =>
          current is SpecificCourseLecturesLoading ||
          current is SpecificCourseLecturesSuccess ||
          current is SpecificCourseLecturesError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (lectures) => setupSuccess(lectures),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const CourseLecturesTabShimmer();
  }

  Widget setupSuccess(List<SpecificCourseLecturesResponseBody> lectures) {
    return CourseLecturesTab(
      lectures: lectures,
      courseId: courseId,
    );
  }

  Widget setupError() {
    return const Center(child: Text("Failed to load lectures"));
  }
}
