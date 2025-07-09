import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/main_page_ongoing_courses/developer_courses_main_page_ongoing_courses_response_body.dart';
import '../../../logic/main_page_ongoing_courses_logic/developer_courses_main_page_ongoing_courses_cubit.dart';
import '../../../logic/main_page_ongoing_courses_logic/developer_courses_main_page_ongoing_courses_state.dart';
import 'ongoing_courses_list.dart';
import 'ongoing_courses_list_shimmer.dart';

class MainPageOngoingCoursesBlocBuilder extends StatelessWidget {
  const MainPageOngoingCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesMainPageOngoingCoursesCubit,
        DeveloperCoursesMainPageOngoingCoursesState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesMainPageOngoingCoursesLoading ||
          current is DeveloperCoursesMainPageOngoingCoursesSuccess ||
          current is DeveloperCoursesMainPageOngoingCoursesError,
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
    return const OngoingCoursesListShimmer();
  }

  Widget setupSuccess(
      List<DeveloperCoursesMainPageOngoingCoursesResponseBody> courses) {
    return OngoingCoursesList(courses: courses);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
