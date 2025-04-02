import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../routing/routes.dart';
import '../theming/styles.dart';

class AppDeveloperHomeTopBar extends StatelessWidget {
  final String hiText;
  final TextStyle? hiTextStyle;
  final String subText;
  final TextStyle? subTextStyle;

  const AppDeveloperHomeTopBar({
    super.key,
    required this.hiText,
    this.hiTextStyle,
    required this.subText,
    this.subTextStyle});

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
              style: hiTextStyle ?? AppTextStyles.font20BlackPoppinsBold,
            ),
            Text(
              subText,
              style: subTextStyle ?? AppTextStyles.font14GranitePoppinsSemiBold,
            )
          ],
        ),

        const Spacer(flex: 1,),

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
            context.pushNamed(Routes.developerNotificationsScreen);
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