import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/developer_courses_completed_response_body.dart';
import '../../../logic/developer_courses_completed_logic/developer_courses_completed_cubit.dart';
import '../../../logic/developer_courses_completed_logic/developer_courses_completed_state.dart';
import 'completed_course.dart';
import 'completed_courses_shimmer.dart';

class CompletedCoursesBlocBuilder extends StatelessWidget {
  const CompletedCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesCompletedCubit,
        DeveloperCoursesCompletedState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesCompletedStateLoading ||
          current is DeveloperCoursesCompletedSuccess ||
          current is DeveloperCoursesCompletedError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (courses) => setupSuccess(courses),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const CompletedCoursesShimmer();
  }

  Widget setupSuccess(List<DeveloperCoursesCompletedResponseBody> courses) {
    return CompletedCourses(courses: courses);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
