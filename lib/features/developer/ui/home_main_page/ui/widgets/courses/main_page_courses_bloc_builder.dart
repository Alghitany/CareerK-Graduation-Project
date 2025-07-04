import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/developer_courses_home_main_page_models/developer_courses_home_main_page_response_body.dart';
import '../../../logic/developer_courses_home_main_page_logic/developer_courses_home_main_page_cubit.dart';
import '../../../logic/developer_courses_home_main_page_logic/developer_courses_home_main_page_state.dart';
import 'main_page_courses_list.dart';
import 'main_page_courses_list_shimmer.dart';

class DeveloperCoursesBlocBuilder extends StatelessWidget {
  const DeveloperCoursesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCoursesHomeMainPageCubit,
        DeveloperCoursesHomeMainPageState>(
      buildWhen: (previous, current) =>
          current is DeveloperCoursesLoading ||
          current is DeveloperCoursesSuccess ||
          current is DeveloperCoursesError,
      builder: (context, state) {
        return state.maybeWhen(
          developerCoursesLoading: () => _buildLoading(),
          developerCoursesSuccess: (data) => _buildSuccess(data),
          developerCoursesError: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const MainPageCoursesListShimmer();
  }

  Widget _buildSuccess(List<DeveloperCoursesHomeMainPageResponseBody> data) {
    return MainPageCoursesList(courses: data);
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
