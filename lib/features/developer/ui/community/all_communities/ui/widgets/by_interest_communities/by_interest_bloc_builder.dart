import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/by_interest_models/developer_community_by_interest_response_body.dart';
import '../../../logic/by_interest_logic/developer_community_by_interest_cubit.dart';
import '../../../logic/by_interest_logic/developer_community_by_interest_state.dart';
import 'by_interest_community_list.dart';
import 'by_interest_community_list_shimmer.dart';

class ByInterestBlocBuilder extends StatelessWidget {
  const ByInterestBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCommunityByInterestCubit,
        DeveloperCommunityByInterestState>(
      buildWhen: (previous, current) =>
          current is DeveloperCommunityByInterestLoading ||
          current is DeveloperCommunityByInterestSuccess ||
          current is DeveloperCommunityByInterestError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (groups) => setupSuccess(groups),
          error: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const ByInterestCommunityListShimmer();
  }

  Widget setupSuccess(List<DeveloperCommunityByInterestGroup> groups) {
    return ByInterestCommunityList(groups: groups);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
