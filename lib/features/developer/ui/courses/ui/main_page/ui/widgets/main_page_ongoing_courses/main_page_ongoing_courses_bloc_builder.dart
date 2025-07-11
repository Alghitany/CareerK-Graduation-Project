import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/models/ongoing_courses/developer_courses_ongoing_response_body.dart';
import '../../../../../logic/ongoing_courses_logic/developer_courses_ongoing_cubit.dart';
import '../../../../../logic/ongoing_courses_logic/developer_courses_ongoing_state.dart';
import 'ongoing_courses_list.dart';
import 'ongoing_courses_list_shimmer.dart';

class MainPageOngoingCoursesBlocBuilder extends StatelessWidget {
  const MainPageOngoingCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesOngoingCubit,
        DeveloperCoursesOngoingState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesOngoingLoading ||
          current is DeveloperCoursesOngoingSuccess ||
          current is DeveloperCoursesOngoingError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (courses) => setupSuccess(courses),
          error: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const OngoingCoursesListShimmer();
  }

  Widget setupSuccess(List<DeveloperCoursesOngoingResponseBody> courses) {
    return OngoingCoursesList(courses: courses);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}

class DeveloperCoursesOngoingLoading {}
