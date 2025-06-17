import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommunityCard extends StatelessWidget {
  final String communityName;
  final String memberCount;
  final String iconPath;

  const CommunityCard(
      {super.key,
      required this.communityName,
      required this.memberCount,
      required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // TODO: Should Specify which chat to navigate according to the clicked option
      onTap: () {
        context.pushNamed(Routes.developerCommunityChatScreen);
      },
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: 140.w,
          height: 161.h,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Community Icon
              Container(
                width: 50.w,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: ColorsManager.duskyBlue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    iconPath,
                    width: 24.w,
                    height: 24.h,
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              verticalSpace(8),

              // Community Name
              Text(communityName,
                  style: AppTextStyles.font16BlackPoppinsSemiBold),
              verticalSpace(4),

              // Member Count
              Text("$memberCount people",
                  style: AppTextStyles.font14NobelPoppinsRegular),
            ],
          ),
        ),
      ),
    );
  }
}
