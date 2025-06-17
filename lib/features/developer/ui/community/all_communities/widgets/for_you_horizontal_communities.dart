import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'community_card.dart';

class ForYouCommunityList extends StatelessWidget {
  const ForYouCommunityList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> communityList = [
      {
        "name": "React",
        "count": "10,602",
        "icon": "assets/svgs/community_card_icon.svg",
      },
      {
        "name": "Flutter",
        "count": "8,451",
        "icon": "assets/svgs/community_card_icon.svg",
      },
      {
        "name": "Vue",
        "count": "7,214",
        "icon": "assets/svgs/community_card_icon.svg",
      },
    ];

    return SizedBox(
      height: 170.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: communityList.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final community = communityList[index];
          return CommunityCard(
            communityName: community["name"]!,
            memberCount: community["count"]!,
            iconPath: community["icon"]!,
          );
        },
      ),
    );
  }
}
