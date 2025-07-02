import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../features/developer/logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import '../../../features/developer/logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_state.dart';

class DeveloperJobBookmarkBlocBuilder extends StatelessWidget {
  final String jobId;

  const DeveloperJobBookmarkBlocBuilder({super.key, required this.jobId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperSingleJobBookmarkCubit,
        DeveloperSingleJobBookmarkState>(
      buildWhen: (previous, current) =>
          current is DeveloperSingleJobBookmarkLoading ||
          current is DeveloperSingleJobBookmarkSuccess ||
          current is DeveloperSingleJobBookmarkError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(context, data.bookmarked),
          error: (_) => setupError(context),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Icon(
      Icons.bookmark_border,
      size: 24.sp,
      color: Colors.grey,
    );
  }

  Widget setupSuccess(BuildContext context, bool isBookmarked) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context.read<DeveloperSingleJobBookmarkCubit>().bookmarkJob(jobId);
      },
      icon: SvgPicture.asset(
        isBookmarked
            ? 'assets/svgs/bookmark_filled.svg'
            : 'assets/svgs/bookmark_outlined.svg',
        height: 20.h,
        width: 18.w,
      ),
    );
  }

  Widget setupError(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        // Retry bookmarking on error
        context.read<DeveloperSingleJobBookmarkCubit>().bookmarkJob(jobId);
      },
      icon: const Icon(Icons.error_outline, color: Colors.red),
    );
  }
}
