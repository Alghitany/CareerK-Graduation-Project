import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../routing/routes.dart';
import '../../theming/colors.dart';
import '../../theming/styles.dart';

class CoursesAndJobsMainPageTopBar extends StatelessWidget {
  final String fullName;
  final String? profilePicture;

  const CoursesAndJobsMainPageTopBar({
    super.key,
    required this.fullName,
    this.profilePicture,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      color: ColorsManager.magnolia,
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hi,', style: AppTextStyles.font16BlackPoppinsSemiBold),
              Text(fullName, style: AppTextStyles.font16BlackPoppinsSemiBold),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.developerProfileMainPageScreen);
            },
            child: Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorsManager.lemonGrass,
                  width: 1.w,
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: profilePicture != null && profilePicture!.isNotEmpty
                  ? Image.network(
                "${ApiConstants.baseImageUrl}/$profilePicture",
                fit: BoxFit.cover,
              )
                  : Padding(
                padding: EdgeInsets.all(12.w),
                child: SvgPicture.asset(
                  "assets/svgs/person_outlined.svg",
                  colorFilter: const ColorFilter.mode(
                    ColorsManager.lemonGrass,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}