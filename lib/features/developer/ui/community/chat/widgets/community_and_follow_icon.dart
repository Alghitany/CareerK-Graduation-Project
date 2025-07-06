import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/theming/colors.dart';

class CommunityAndFollowIcon extends StatefulWidget {
  const CommunityAndFollowIcon({super.key});

  @override
  State<CommunityAndFollowIcon> createState() => _CommunityAndFollowIconState();
}

class _CommunityAndFollowIconState extends State<CommunityAndFollowIcon> {
  bool isFollow = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60.w,
          height: 60.h,
          decoration: const BoxDecoration(
            color: ColorsManager.duskyBlue,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/svgs/community_card_icon.svg",
              width: 24.w,
              height: 24.h,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        horizontalSpace(10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('React',
                style: AppTextStyles.font16RangoonGreenPoppinsSemiBold),
            verticalSpace(8),
            Text('10,602 people',
                style: AppTextStyles.font14NobelPoppinsRegular),
          ],
        ),
        const Spacer(),
        GestureDetector(
          child: Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: ColorsManager.waikawaGrey),
            ),
            child: Center(
              child: SvgPicture.asset(
                isFollow
                    ? "assets/svgs/follow.svg"
                    : "assets/svgs/unfollow.svg",
                width: 19.w,
                height: 19.h,
              ),
            ),
          ),
          onTap: () {
            // TODO: The Icon Should be changed and the follow added to database
            setState(() {
              isFollow = !isFollow;
            });
          },
        ),
      ],
    );
  }
}
