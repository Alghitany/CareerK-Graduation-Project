import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../../core/helpers/app_regex.dart';
import '../../../../../../../../../core/routing/routes.dart';

class HomePageTopBar extends StatelessWidget {
  final String? companyName;
  final String? industry;
  final String? profilePicture;

  const HomePageTopBar({
    super.key,
    this.companyName,
    this.industry,
    this.profilePicture,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12.w, 28.h, 12.w, 0.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: Colors.transparent,
            // Optional: avoid background color
            child: profilePicture != null && profilePicture!.isNotEmpty
                ? (AppRegex.isSvg(profilePicture)
                    ? SvgPicture.network(
                        "${ApiConstants.apiBaseUrl}$profilePicture",
                        width: 56.r, // Adjust according to radius * 2
                        height: 56.r,
                        fit: BoxFit.cover,
                        placeholderBuilder: (_) => Image.asset(
                          "assets/images/company_logo.png",
                          width: 56.r,
                          height: 56.r,
                          fit: BoxFit.cover,
                        ),
                      )
                    : ClipOval(
                        child: Image.network(
                          "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(profilePicture)}",
                          width: 56.r,
                          height: 56.r,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Image.asset(
                            "assets/images/company_logo.png",
                            width: 56.r,
                            height: 56.r,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                : Image.asset(
                    "assets/images/company_logo.png",
                    width: 56.r,
                    height: 56.r,
                    fit: BoxFit.cover,
                  ),
          ),
          horizontalSpace(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                companyName ?? "No name",
                style: AppTextStyles.font16DunePoppinsSemiBold,
              ),
              verticalSpace(4),
              Text(
                industry ?? "Unknown",
                style: AppTextStyles.font12GranitePoppinsRegular,
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              context.pushNamed(Routes.notificationsScreen);
            },
            icon: Image.asset(
              "assets/svgs/notifications.png",
              height: 32.h,
              width: 32.w,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
