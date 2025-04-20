import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeeDetailsTopBar extends StatefulWidget {
  const SeeDetailsTopBar({super.key});

  @override
  State<SeeDetailsTopBar> createState() => _SeeDetailsTopBarState();
}

class _SeeDetailsTopBarState extends State<SeeDetailsTopBar> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppBackIcon(),
        horizontalSpace(16),
        Text(
          'Details',
          style: AppTextStyles.font24RangoonGreenPoppinsSemiBold,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            setState(() {
              isBookmarked = !isBookmarked;
            });
          },
          icon: SvgPicture.asset(
            isBookmarked
                ? 'assets/svgs/bookmark_filled.svg'
                : 'assets/svgs/bookmark_outlined.svg',
            height: 18.h,
            width: 15.w,
          ),
        )
      ],
    );
  }
}
