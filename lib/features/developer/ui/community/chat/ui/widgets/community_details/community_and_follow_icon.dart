import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../core/theming/colors.dart';

class CommunityAndFollowIcon extends StatefulWidget {
  final String groupName;
  final int memberCount;
  final String imageUrl; // could be SVG or raster

  const CommunityAndFollowIcon({
    super.key,
    required this.groupName,
    required this.memberCount,
    required this.imageUrl,
  });

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
            child: _buildCommunityIcon(widget.imageUrl),
          ),
        ),
        horizontalSpace(10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.groupName,
              style: AppTextStyles.font16RangoonGreenPoppinsSemiBold,
            ),
            verticalSpace(8),
            Text(
              "${widget.memberCount} people",
              style: AppTextStyles.font14NobelPoppinsRegular,
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              isFollow = !isFollow;
            });
          },
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
        ),
      ],
    );
  }

  Widget _buildCommunityIcon(String url) {
    if (AppRegex.isSvg(url)) {
      return SvgPicture.network(
        url,
        width: 24.w,
        height: 24.h,
        placeholderBuilder: (context) => const CircularProgressIndicator(),
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      );
    } else {
      return ClipOval(
        child: Image.network(
          url,
          width: 50.w,
          height: 50.h,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.broken_image, color: Colors.white),
        ),
      );
    }
  }
}
