import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenerateCVTopBar extends StatelessWidget {
  final VoidCallback onSubmit;

  const GenerateCVTopBar({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AppBackIcon(),
        SizedBox(width: 16.w),
        Expanded(
          child: Text(
            'Generate CV',
            style: AppTextStyles.font20DunePoppinsMedium,
          ),
        ),
        IconButton(
            onPressed: onSubmit,
            icon: SvgPicture.asset(
              "assets/svgs/magic_wand.svg",
              colorFilter: const ColorFilter.mode(
                ColorsManager.primaryWildBlueYonder,
                BlendMode.srcIn,
              ),
              height: 30.h,
              width: 30.w,
            )),
      ],
    );
  }
}
