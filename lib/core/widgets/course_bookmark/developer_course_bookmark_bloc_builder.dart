import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../features/developer/data/models/developer_add_course_bookmark_models/developer_add_course_bookmark_request_body.dart';
import '../../../features/developer/logic/developer_add_course_bookmark_logic/developer_add_course_bookmark_cubit.dart';
import '../../../features/developer/logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_cubit.dart';
import '../../../features/developer/logic/developer_single_course_bookmark_logic/developer_single_course_bookmark_state.dart';

class DeveloperCourseBookmarkBlocBuilder extends StatelessWidget {
  final String courseId;
  final bool? heartType;

  const DeveloperCourseBookmarkBlocBuilder({
    super.key,
    required this.courseId,
    this.heartType,
  });

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
          success: (data) =>
              setupSuccess(context, data.isBookmarked, heartType ?? false),
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

  Widget setupSuccess(BuildContext context, bool isBookmarked, bool heartIcon) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () async {
        final addBookmarkCubit =
            context.read<DeveloperAddCourseBookmarkCubit>();
        final singleBookmarkCubit =
            context.read<DeveloperSingleCourseBookmarkCubit>();

        await addBookmarkCubit.addCourseBookmark(
          courseId: courseId,
          body: const DeveloperAddCourseBookmarkRequestBody(),
        );

        // Refresh bookmark state after change
        singleBookmarkCubit.bookmarkCourse(courseId);
      },
      icon: heartIcon
          ? Container(
              padding: EdgeInsets.all(6.h),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: SvgPicture.asset(
                isBookmarked
                    ? 'assets/svgs/heart.svg'
                    : 'assets/svgs/empty_heart.svg',
              ),
            )
          : SvgPicture.asset(
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
        context
            .read<DeveloperSingleCourseBookmarkCubit>()
            .bookmarkCourse(courseId);
      },
      icon: const Icon(Icons.error_outline, color: Colors.red),
    );
  }
}
