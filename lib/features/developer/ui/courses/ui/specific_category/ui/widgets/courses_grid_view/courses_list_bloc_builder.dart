import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../data/models/developer_courses_specific_category_response_body.dart';
import '../../../logic/developer_courses_specific_category_cubit.dart';
import '../../../logic/developer_courses_specific_category_state.dart';
import 'courses/courses_grid_view.dart';
import 'courses/specific_category_app_bar_and_search_text_field.dart';
import 'shimmer/courses_list_shimmer.dart';
import 'shimmer/specific_category_app_bar_and_search_text_field_shimmer.dart';

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
          success: (data) => setupSuccess(data),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Column(
      children: [
        const SpecificCategoryAppBarAndSearchShimmer(),
        verticalSpace(24),
        const CoursesListShimmer(),
      ],
    );
  }

  Widget setupSuccess(DeveloperCoursesSpecificCategoryResponseBody data) {
    return Column(
      children: [
        SpecificCategoryAppBarAndSearchTextField(
          categoryTitle: data.trackName,
        ),
        verticalSpace(24),
        CoursesGridView(courses: data.courses),
      ],
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
