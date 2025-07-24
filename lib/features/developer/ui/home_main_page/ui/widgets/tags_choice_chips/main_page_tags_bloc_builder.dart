import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/networking/api_error_model.dart';
import '../../../data/models/developer_tags_home_main_page_models/developer_tags_home_main_page_response_body.dart';
import '../../../logic/developer_courses_home_main_page_logic/developer_courses_home_main_page_cubit.dart';
import '../../../logic/developer_tags_home_main_page_logic/developer_tags_home_main_page_cubit.dart';
import '../../../logic/developer_tags_home_main_page_logic/developer_tags_home_main_page_state.dart';
import 'main_page_tags_choice_chips.dart';
import 'main_page_tags_choice_chips_shimmer.dart';

class DeveloperTagsBlocBuilder extends StatefulWidget {
  const DeveloperTagsBlocBuilder({super.key});

  @override
  State<DeveloperTagsBlocBuilder> createState() =>
      _DeveloperTagsBlocBuilderState();
}

class _DeveloperTagsBlocBuilderState extends State<DeveloperTagsBlocBuilder> {
  bool hasFetchedInitialCourses = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperTagsHomeMainPageCubit,
        DeveloperTagsHomeMainPageState>(
      buildWhen: (previous, current) =>
          current is DeveloperTagsLoading ||
          current is DeveloperTagsSuccess ||
          current is DeveloperTagsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildLoading(),
          success: (data) => _buildSuccess(context, data),
          error: (apiErrorModel) => _buildError(apiErrorModel),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const MainPageTagsChoiceChipsShimmer();
  }

  Widget _buildSuccess(
      BuildContext context, List<DeveloperTagsHomeMainPageResponseBody> data) {
    if (!hasFetchedInitialCourses) {
      hasFetchedInitialCourses = true;
      final firstTrackId = data.first.trackId;
      context
          .read<DeveloperCoursesHomeMainPageCubit>()
          .fetchDeveloperCourses(firstTrackId);
    }
    return MainPageTagsChoiceChips(
      tags: data,
      onSelected: (trackId) {
        context
            .read<DeveloperCoursesHomeMainPageCubit>()
            .fetchDeveloperCourses(trackId);
      },
    );
  }

  Widget _buildError(ApiErrorModel apiErrorModel) {
    return Center(child: Text(apiErrorModel.getAllErrorMessages()));
  }
}
