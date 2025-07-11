import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/models/related_courses/developer_courses_related_courses_response_body.dart';
import '../../../../../logic/related_courses_logic/developer_courses_related_courses_cubit.dart';
import '../../../../../logic/related_courses_logic/developer_courses_related_courses_state.dart';
import 'related_courses_list.dart';
import 'related_courses_list_shimmer.dart';

class MainPageRelatedCoursesBlocBuilder extends StatelessWidget {
  const MainPageRelatedCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesRelatedCoursesCubit,
        DeveloperCoursesRelatedCoursesState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesRelatedCoursesLoading ||
          current is DeveloperCoursesRelatedCoursesSuccess ||
          current is DeveloperCoursesRelatedCoursesError,
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
    return const RelatedCoursesListShimmer();
  }

  Widget setupSuccess(
      List<DeveloperCoursesRelatedCoursesResponseBody> courses) {
    return RelatedCoursesList(courses: courses);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
