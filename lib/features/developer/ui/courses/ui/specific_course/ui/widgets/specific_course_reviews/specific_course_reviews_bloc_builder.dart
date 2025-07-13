import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/specific_course_reviews_models/specific_course_reviews_response_body.dart';
import '../../../logic/specific_course_reviews_logic/specific_course_reviews_cubit.dart';
import '../../../logic/specific_course_reviews_logic/specific_course_reviews_state.dart';
import 'course_reviews_tab/course_reviews_tab.dart';
import 'course_reviews_tab/course_reviews_tab_shimmer.dart';

class SpecificCourseReviewsBlocBuilder extends StatelessWidget {
  const SpecificCourseReviewsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecificCourseReviewsCubit, SpecificCourseReviewsState>(
      buildWhen: (previous, current) =>
          current is SpecificCourseReviewsLoading ||
          current is SpecificCourseReviewsSuccess ||
          current is SpecificCourseReviewsError,
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
    return const CourseReviewsTabShimmer();
  }

  Widget setupSuccess(SpecificCourseReviewsResponseBody data) {
    return CourseReviewsTab(
      averageRating: data.averageRating,
      reviews: data.reviews,
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
