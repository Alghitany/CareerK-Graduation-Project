import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/developer_courses_specific_category_response_body.dart';
import '../../../logic/developer_courses_specific_category_cubit.dart';
import '../../../logic/developer_courses_specific_category_state.dart';
import 'courses_grid_view.dart';
import 'courses_list_shimmer.dart';

class CoursesListBlocBuilder extends StatelessWidget {
  const CoursesListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesSpecificCategoryCubit,
        DeveloperCoursesSpecificCategoryState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesSpecificCategoryLoading ||
          current is DeveloperCoursesSpecificCategorySuccess ||
          current is DeveloperCoursesSpecificCategoryError,
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
    return const CoursesListShimmer();
  }

  Widget setupSuccess(
      List<DeveloperCoursesSpecificCategoryResponseBody> courses) {
    return CoursesGridView(courses: courses);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
