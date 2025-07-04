import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/developer_tags_home_main_page_models/developer_tags_home_main_page_response_body.dart';
import '../../../logic/developer_tags_home_main_page_logic/developer_tags_home_main_page_cubit.dart';
import '../../../logic/developer_tags_home_main_page_logic/developer_tags_home_main_page_state.dart';
import 'main_page_tags_choice_chips.dart';
import 'main_page_tags_choice_chips_shimmer.dart';

class DeveloperTagsBlocBuilder extends StatelessWidget {
  const DeveloperTagsBlocBuilder({super.key});

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
          success: (data) => _buildSuccess(data),
          error: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const MainPageTagsChoiceChipsShimmer();
  }

  Widget _buildSuccess(List<DeveloperTagsHomeMainPageResponseBody> data) {
    return MainPageTagsChoiceChips(tags: data);
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
