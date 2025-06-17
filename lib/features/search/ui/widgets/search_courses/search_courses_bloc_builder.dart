import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/search_courses_cubit.dart';
import '../../../logic/search_courses_state.dart';
import '../no_results.dart';
import 'search_course_shimmer.dart';
import 'search_result_list.dart';


class SearchCoursesBlocBuilder extends StatelessWidget {
  const SearchCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCoursesCubit, SearchCoursesState>(
      buildWhen: (previous, current) =>
      current is SearchCoursesLoading ||
          current is SearchCoursesSuccess ||
          current is SearchCoursesError,
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
    return const SearchCoursesShimmer();
  }

  Widget setupSuccess(List courses) {
    if (courses.isEmpty) return const NoResults();
    return SearchResultList(courses: courses);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
