import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/community_tags_logic/developer_community_tags_cubit.dart';
import '../../../logic/community_tags_logic/developer_community_tags_state.dart';
import 'by_interest_chips_list.dart';
import 'by_interest_chips_list_shimmer.dart';

class CommunityTagsBlocBuilder extends StatefulWidget {
  final void Function(String tag)? onTagSelected;

  const CommunityTagsBlocBuilder({super.key, this.onTagSelected});

  @override
  State<CommunityTagsBlocBuilder> createState() =>
      _CommunityTagsBlocBuilderState();
}

class _CommunityTagsBlocBuilderState extends State<CommunityTagsBlocBuilder> {
  bool hasFetchedInitialData = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperCommunityTagsCubit,
        DeveloperCommunityTagsState>(
      buildWhen: (previous, current) =>
          current is DeveloperCommunityTagsLoading ||
          current is DeveloperCommunityTagsSuccess ||
          current is DeveloperCommunityTagsError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const ByInterestChipsListShimmer(),
          success: (tags) => _buildSuccess(tags),
          error: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildSuccess(List<String> tags) {
    if (!hasFetchedInitialData && tags.isNotEmpty) {
      hasFetchedInitialData = true;
      widget.onTagSelected?.call(tags.first);
    }

    return ByInterestChipsList(
      tags: tags,
      onSelected: (tag) {
        widget.onTagSelected?.call(tag);
      },
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
