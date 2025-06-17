import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'courses_and_jobs_main_page_top_bar.dart';
import '../../../features/developer/logic/developer_courses_and_jobs_main_page_profile_cubit.dart';
import '../../../features/developer/logic/developer_courses_and_jobs_main_page_profile_state.dart';
import 'courses_and_jobs_top_bar_shimmer.dart';

class DeveloperCoursesAndJobsMainPageProfileBlocBuilder extends StatelessWidget {
  const DeveloperCoursesAndJobsMainPageProfileBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesAndJobsMainPageProfileCubit, DeveloperCoursesAndJobsMainPageProfileState>(
      buildWhen: (previous, current) =>
      current is DeveloperCoursesAndJobsMainPageProfileLoading ||
          current is DeveloperCoursesAndJobsMainPageProfileSuccess ||
          current is DeveloperCoursesAndJobsMainPageProfileError,
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
    return const DeveloperCoursesAndJobsTopBarShimmer();
  }

  Widget setupSuccess(profileModel) {
    final fullName = '${profileModel.firstName} ${profileModel.lastName}';
    return CoursesAndJobsMainPageTopBar(
      fullName: fullName,
      profilePicture: profileModel.profilePicture,
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
