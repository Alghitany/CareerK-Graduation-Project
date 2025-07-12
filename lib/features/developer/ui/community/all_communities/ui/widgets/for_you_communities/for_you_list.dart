import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/for_you_models/developer_community_for_you_response_body.dart';
import '../community_card.dart';

class ForYouList extends StatelessWidget {
  final List<DeveloperCommunityGroup> groups;

  const ForYouList({super.key, required this.groups});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: groups.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final group = groups[index];
          return CommunityCard(
            communityName: group.groupName,
            memberCount: group.memberCount.toString(),
            iconPath: group.imageUrl,
            groupId: group.chatRoomId,
          );
        },
      ),
    );
  }
}
