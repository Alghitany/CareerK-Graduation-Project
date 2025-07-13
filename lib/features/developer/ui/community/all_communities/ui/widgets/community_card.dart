import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/networking/api_constants.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/helpers/app_regex.dart';

class CommunityCard extends StatelessWidget {
  final String communityName;
  final String memberCount;
  final String iconPath;
  final String groupId;

  const CommunityCard({
    super.key,
    required this.communityName,
    required this.memberCount,
    required this.iconPath,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.developerCommunityChatScreen,
            arguments: AppArgument(groupId: groupId));
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
              // Community Icon (SVG or Image)
              Container(
                width: 50.w,
                height: 50.h,
                decoration: const BoxDecoration(
                  color: ColorsManager.duskyBlue,
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: AppRegex.isSvg(iconPath)
                      ? SvgPicture.network(
                          "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(iconPath)}",
                          width: 24.w,
                          height: 24.h,
                          fit: BoxFit.scaleDown,
                          placeholderBuilder: (_) =>
                              const CircularProgressIndicator(),
                          colorFilter: const ColorFilter.mode(
                            Colors.white,
                            BlendMode.srcIn,
                          ),
                        )
                      : Image.network(
                          "${ApiConstants.apiBaseUrl}${AppRegex.cutBaseUrl(iconPath)}",
                          width: 50.w,
                          height: 50.h,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.broken_image,
                                  color: Colors.white),
                        ),
                ),
              ),
              verticalSpace(8),

              // Community Name
              Text(
                communityName,
                textAlign: TextAlign.center,
                style: AppTextStyles.font16BlackPoppinsSemiBold,
              ),
              verticalSpace(4),

              // Member Count
              Text(
                "$memberCount people",
                style: AppTextStyles.font14NobelPoppinsRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
