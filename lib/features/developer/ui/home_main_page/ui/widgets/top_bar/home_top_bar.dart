import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/theming/styles.dart';

class HomeTopBar extends StatelessWidget {
  final String hiText;
  final String subText;

  const HomeTopBar({
    super.key,
    required this.hiText,
    required this.subText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hiText,
              style: AppTextStyles.font20BlackPoppinsBold,
            ),
            Text(
              subText,
              style: AppTextStyles.font14GranitePoppinsSemiBold,
            )
          ],
        ),

        const Spacer(
          flex: 1,
        ),

        IconButton(
          onPressed: () {
            context.pushNamed(Routes.developerCommunityAllCommunitiesScreen);
          },
          icon: SvgPicture.asset(
            "assets/svgs/community.svg",
            height: 30,
            width: 30,
            fit: BoxFit.contain,
          ),
        ),

        //TODO: Need an svg icon for notifications
        IconButton(
          onPressed: () {
            context.pushNamed(Routes.notificationsScreen);
          },
          icon: Image.asset(
            "assets/svgs/notifications.png",
            height: 32,
            width: 32,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
