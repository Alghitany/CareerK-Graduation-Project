import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/developer_profile_courses_bookmarked_models/developer_profile_courses_bookmarked_response_body.dart';
import '../logic/developer_profile_courses_bookmarked_logic/developer_profile_courses_bookmarked_cubit.dart';
import '../logic/developer_profile_courses_bookmarked_logic/developer_profile_courses_bookmarked_state.dart';
import 'courses/bookmarked_courses_list.dart';
import 'courses/bookmarked_courses_list_shimmer.dart';

class BookmarkedCoursesBlocBuilder extends StatelessWidget {
  const BookmarkedCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileCoursesBookmarkedCubit,
        DeveloperProfileCoursesBookmarkedState>(
      buildWhen: (previous, current) =>
          current is DeveloperProfileCoursesBookmarkedLoading ||
          current is DeveloperProfileCoursesBookmarkedSuccess ||
          current is DeveloperProfileCoursesBookmarkedError,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const BookmarkedCoursesListShimmer(),
          success: (data) => _buildSuccess(data),
          error: (error) => _buildError(error),
        );
      },
    );
  }

  Widget _buildSuccess(
      List<DeveloperProfileCoursesBookmarkedResponseBody> data) {
    if (data.isEmpty) {
      return const Center(child: Text("No bookmarked courses found."));
    }

    return BookmarkedCoursesList(courses: data);
  }

  Widget _buildError(String? error) {
    return Center(
      child: Text("Error: ${error ?? 'Unknown error'}"),
    );
  }
}
