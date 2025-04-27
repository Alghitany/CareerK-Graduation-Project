import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_edit_profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.developerProfileSettingsScreen);
          },
          child: SvgPicture.asset(
            "assets/svgs/menu.svg",
            height: 17.h,
            width: 24.w,
            colorFilter:
                const ColorFilter.mode(ColorsManager.dune, BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.fromLTRB(0.0.w, 8.h, 0.w, 0.h),
          child: const AppEditProfilePicture(
            imageRadius: 60,
            editIconBackgroundRadius: 15,
            editIconHeight: 15,
            editIconWidth: 15,
          ),
        ),
        const Spacer(),
        const AppBackIcon(
          iconPath: 'assets/svgs/exit.svg',
        ),
      ],
    );
  }
}
