import 'package:carrerk/features/developer/ui/courses/ui/my_courses/ui/widgets/ongoing/ongoing_courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/models/ongoing_courses/developer_courses_ongoing_response_body.dart';
import '../../../../../logic/ongoing_courses_logic/developer_courses_ongoing_cubit.dart';
import '../../../../../logic/ongoing_courses_logic/developer_courses_ongoing_state.dart';
import 'ongoing_courses_shimmer.dart';

class OngoingCoursesBlocBuilder extends StatelessWidget {
  const OngoingCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesOngoingCubit,
        DeveloperCoursesOngoingState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesOngoingStateLoading ||
          current is DeveloperCoursesOngoingSuccess ||
          current is DeveloperCoursesOngoingError,
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
    return const OngoingCoursesShimmer();
  }

  Widget setupSuccess(List<DeveloperCoursesOngoingResponseBody> courses) {
    return OngoingCourses(courses: courses);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
