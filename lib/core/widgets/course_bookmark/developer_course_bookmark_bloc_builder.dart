import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../features/developer/logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';
import '../../../features/developer/logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_state.dart';

class DeveloperCourseBookmarkBlocBuilder extends StatelessWidget {
  final String courseId;

  const DeveloperCourseBookmarkBlocBuilder({super.key, required this.courseId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperSingleCourseBookmarkCubit,
        DeveloperSingleCourseBookmarkState>(
      buildWhen: (previous, current) =>
          current is DeveloperSingleCourseBookmarkLoading ||
          current is DeveloperSingleCourseBookmarkSuccess ||
          current is DeveloperSingleCourseBookmarkError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(context, data.isBookmarked),
          error: (_) => setupError(context),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: null, // Disable interaction during loading
      icon: SizedBox(
        width: 22.w,
        height: 22.h,
        child: const CircularProgressIndicator(
          strokeWidth: 2,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget setupSuccess(BuildContext context, bool isBookmarked) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context
            .read<DeveloperSingleCourseBookmarkCubit>()
            .bookmarkCourse(courseId);
      },
      icon: SvgPicture.asset(
        isBookmarked
            ? 'assets/svgs/bookmark_filled.svg'
            : 'assets/svgs/bookmark_outlined.svg',
        height: 22.h,
        width: 22.w,
      ),
    );
  }

  Widget setupError(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        // Retry bookmarking on error
        context
            .read<DeveloperSingleCourseBookmarkCubit>()
            .bookmarkCourse(courseId);
      },
      icon: const Icon(Icons.error_outline, color: Colors.red),
    );
  }
}
