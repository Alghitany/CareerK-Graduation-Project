import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/networking/api_error_model.dart';
import '../../../data/models/for_you_models/developer_community_for_you_response_body.dart';
import '../../../logic/for_you_logic/developer_community_for_you_cubit.dart';
import '../../../logic/for_you_logic/developer_community_for_you_state.dart';
import 'for_you_list.dart';
import 'for_you_list_shimmer.dart';

class ForYouBlocBuilder extends StatelessWidget {
  const ForYouBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCommunityForYouCubit,
        DeveloperCommunityForYouState>(
      buildWhen: (previous, current) =>
          current is DeveloperCommunityForYouStateLoading ||
          current is DeveloperCommunityForYouStateSuccess ||
          current is DeveloperCommunityForYouStateError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (groups) => setupSuccess(groups),
          error: (apiErrorModel) => setupError(apiErrorModel),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const ForYouListShimmer();
  }

  Widget setupSuccess(List<DeveloperCommunityGroup> groups) {
    return ForYouList(groups: groups);
  }

  Widget setupError(ApiErrorModel apiErrorModel) {
    return Center(child: Text("Error: ${apiErrorModel.getAllErrorMessages()}"));
  }
}
