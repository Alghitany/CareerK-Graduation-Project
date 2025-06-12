import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackIconDetailsAndBookmarkIcon extends StatefulWidget {
  const BackIconDetailsAndBookmarkIcon({super.key});

  @override
  State<BackIconDetailsAndBookmarkIcon> createState() =>
      _BackIconDetailsAndBookmarkIconState();
}

class _BackIconDetailsAndBookmarkIconState
    extends State<BackIconDetailsAndBookmarkIcon> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0.w),
      child: Row(
        children: [
          const AppBackIcon(),
          horizontalSpace(16),
          Text(
            'Details',
            style: AppTextStyles.font24RangoonGreenPoppinsSemiBold,
          ),
          const Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                isBookmarked = !isBookmarked;
              });
            },
            icon: SvgPicture.asset(
              isBookmarked
                  ? 'assets/svgs/bookmark_filled.svg'
                  : 'assets/svgs/bookmark_outlined.svg',
              height: 20.h,
              width: 18.w,
            ),
          ),
        ],
      ),
    );
  }
}
