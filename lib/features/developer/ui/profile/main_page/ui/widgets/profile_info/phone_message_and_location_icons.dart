import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../core/routing/routes.dart';
import '../../../logic/profile_info_logic/developer_profile_main_page_info_cubit.dart';
import '../../../logic/profile_info_logic/developer_profile_main_page_info_state.dart';

class PhoneMessageAndLocationIcons extends StatelessWidget {
  const PhoneMessageAndLocationIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileMainPageInfoCubit,
        DeveloperProfileMainPageInfoState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (profileData) => Row(
            children: [
              const Spacer(),
              customCircleIcon(
                icon: "assets/svgs/phone_outlined.svg",
                onTap: () => _showDialog(
                  context,
                  "Phone",
                  profileData.phoneNumber ?? '',
                ),
              ),
              horizontalSpace(24),
              customCircleIcon(
                icon: "assets/svgs/mail_outlined.svg",
                onTap: () {
                  context.pushNamed(Routes.chatsAllChatsScreen);
                },
              ),
              horizontalSpace(24),
              customCircleIcon(
                icon: "assets/svgs/location_pin_outlined.svg",
                onTap: () => _showDialog(
                  context,
                  "Location",
                  profileData.city ?? '',
                ),
              ),
              const Spacer(),
            ],
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget customCircleIcon({
    required String icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56.w,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          border: Border.all(
            color: ColorsManager.blueBerry,
            width: 1,
          ),
        ),
        alignment: Alignment.center,
        child: SvgPicture.asset(
          icon,
          height: 21.h,
          width: 21.w,
          colorFilter:
              const ColorFilter.mode(ColorsManager.duskyBlue, BlendMode.srcIn),
        ),
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String value) {
    final controller = TextEditingController(text: value);

    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: controller,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.copy),
                      tooltip: 'Copy',
                      onPressed: () {
                        Clipboard.setData(ClipboardData(text: controller.text));
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Copied to clipboard')),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
