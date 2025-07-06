import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../data/model/specific_course_header_models/specific_course_header_response_body.dart';
import '../../../logic/specific_course_header_logic/specific_course_header_cubit.dart';
import '../../../logic/specific_course_header_logic/specific_course_header_state.dart';
import 'course_header/course_name_rating_and_number_of_videos.dart';
import 'course_header/course_name_rating_and_number_of_videos_shimmer.dart';
import 'course_header/image_preview_and_back_icon.dart';
import 'course_header/image_preview_and_back_icon_shimmer.dart';

class SpecificCourseHeaderBlocBuilder extends StatelessWidget {
  final String? courseId;

  const SpecificCourseHeaderBlocBuilder({super.key, this.courseId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecificCourseHeaderCubit, SpecificCourseHeaderState>(
      buildWhen: (previous, current) =>
          current is SpecificCourseHeaderLoading ||
          current is SpecificCourseHeaderSuccess ||
          current is SpecificCourseHeaderError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data, courseId!),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Column(
      children: [
        const ImagePreviewAndBackIconShimmer(),
        verticalSpace(16),
        const CourseNameRatingAndNumberOfVideosShimmer()
      ],
    );
  }

  Widget setupSuccess(SpecificCourseHeaderResponseBody data, String courseId) {
    return Column(
      children: [
        ImagePreviewAndBackIcon(
            imageUrl: data.imageUrl,
            videoUrl: data.previewVideoUrl,
            courseId: courseId),
        verticalSpace(16),
        CourseNameRatingAndNumberOfVideos(
            courseName: data.name,
            averageRating: data.averageRating,
            numberOfVideos: data.videoLessons),
      ],
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
