import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/developer_name_home_main_page_models/developer_name_home_main_page_response_body.dart';
import '../../logic/developer_name_home_main_page_logic/developer_name_home_main_page_cubit.dart';
import '../../logic/developer_name_home_main_page_logic/developer_name_home_main_page_state.dart';
import 'top_bar/home_top_bar.dart';
import 'top_bar/home_top_bar_shimmer.dart';

class DeveloperHomeTopBarBlocBuilder extends StatelessWidget {
  const DeveloperHomeTopBarBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperNameHomeMainPageCubit,
        DeveloperNameHomeMainPageState>(
      buildWhen: (previous, current) =>
          current is DeveloperNameLoading ||
          current is DeveloperNameSuccess ||
          current is DeveloperNameError,
      builder: (context, state) {
        return state.maybeWhen(
          developerNameLoading: () => _buildLoading(),
          developerNameSuccess: (data) => _buildSuccess(data),
          developerNameError: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return const HomeTopBarShimmer();
  }

  Widget _buildSuccess(DeveloperNameHomeMainPageResponseBody data) {
    final developerName = data.developerName ?? 'Developer';
    return HomeTopBar(
      hiText: 'Hi, $developerName!',
      subText: 'What Would you like to do \nToday? Search Below.',
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
