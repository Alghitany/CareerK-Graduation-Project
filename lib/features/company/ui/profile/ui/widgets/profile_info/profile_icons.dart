import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileIcons extends StatelessWidget {
  final String phoneNumber;
  final String email;
  final String location;

  const ProfileIcons({
    super.key,
    required this.phoneNumber,
    required this.email,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        customCirclePhoneMessageLocationContainer(
          icon: "assets/svgs/phone_outlined.svg",
          onTap: () => _showDialog(context, "Phone", phoneNumber),
        ),
        horizontalSpace(24),
        customCirclePhoneMessageLocationContainer(
          icon: "assets/svgs/mail_outlined.svg",
          onTap: () => _showDialog(context, "Email", email),
        ),
        horizontalSpace(24),
        customCirclePhoneMessageLocationContainer(
          icon: "assets/svgs/location_pin_outlined.svg",
          onTap: () => _showDialog(context, "Location", location),
        ),
        const Spacer(),
      ],
    );
  }

  Widget customCirclePhoneMessageLocationContainer({
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
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(value.isNotEmpty ? value : 'No $title provided'),
        actions: [
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: value));
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Copied to clipboard')),
              );
            },
            child: const Text('Copy'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}
