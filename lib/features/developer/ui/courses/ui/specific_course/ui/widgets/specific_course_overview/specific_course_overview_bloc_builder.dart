import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/specific_course_overview_models/specific_course_overview_response_body.dart';
import '../../../logic/specific_course_overview_logic/specific_course_overview_cubit.dart';
import '../../../logic/specific_course_overview_logic/specific_course_overview_state.dart';
import 'course_overview_tap/course_overview_tab.dart';
import 'course_overview_tap/course_overview_tab_shimmer.dart';

class SpecificCourseOverviewBlocBuilder extends StatelessWidget {
  final VoidCallback onStartLearning;

  const SpecificCourseOverviewBlocBuilder(
      {super.key, required this.onStartLearning});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecificCourseOverviewCubit,
        SpecificCourseOverviewState>(
      buildWhen: (previous, current) =>
          current is SpecificCourseOverviewLoading ||
          current is SpecificCourseOverviewSuccess ||
          current is SpecificCourseOverviewError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const CourseOverviewTabShimmer();
  }

  Widget setupSuccess(SpecificCourseOverviewResponseBody data) {
    return CourseOverviewTab(
      totalVideoTime: data.totalVideoTime,
      hasCertificate: data.hasCertificate,
      difficulty: data.difficulty,
      description: data.description,
      onStartLearning: onStartLearning,
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
