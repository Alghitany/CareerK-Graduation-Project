import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/specific_community_logic/specific_community_cubit.dart';
import '../../../logic/specific_community_logic/specific_community_state.dart';
import 'community_and_follow_icon.dart';
import 'community_and_follow_icon_shimmer.dart';

class CommunityDetailsBlocBuilder extends StatelessWidget {
  const CommunityDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecificCommunityCubit, SpecificCommunityState>(
      builder: (context, state) {
        if (state is SpecificCommunityLoading) {
          return const CommunityAndFollowIconShimmer();
        } else if (state is SpecificCommunitySuccess) {
          return CommunityAndFollowIcon(
            groupName: state.group.groupName ?? "No Name",
            memberCount: state.group.memberCount,
            imageUrl: state.group.imageUrl ?? " ",
          );
        } else if (state is SpecificCommunityError) {
          return Center(child: Text("Error: ${state.error}"));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
