import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_edit_logic/customer_profile_edit_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_info_logic/customer_profile_info_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_info_logic/customer_profile_info_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../core/widgets/app_text_button.dart';

class ProfileIcons extends StatelessWidget {
  const ProfileIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileInfoCubit, CustomerProfileInfoState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (profileData) => Row(
            children: [
              const Spacer(),
              customCirclePhoneMessageLocationContainer(
                icon: "assets/svgs/phone_outlined.svg",
                onTap: () => _showDialog(
                  context,
                  "Phone",
                  profileData.phoneNumber ?? "No Number",
                  (newValue) {
                    context
                        .read<CustomerProfileEditCubit>()
                        .phoneNumberController
                        .text = newValue;
                    context
                        .read<CustomerProfileEditCubit>()
                        .editCustomerProfile();
                  },
                ),
              ),
              horizontalSpace(24),
              customCirclePhoneMessageLocationContainer(
                icon: "assets/svgs/mail_outlined.svg",
                onTap: () => _showDialog(
                  context,
                  "Email",
                  profileData.email,
                  (newValue) {
                    context
                        .read<CustomerProfileEditCubit>()
                        .contactEmailController
                        .text = newValue;
                    context
                        .read<CustomerProfileEditCubit>()
                        .editCustomerProfile();
                  },
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

  void _showDialog(
    BuildContext context,
    String title,
    String initialValue,
    Function(String) onSave,
  ) {
    final controller = TextEditingController(text: initialValue);

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
                      "Edit $title",
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
                  decoration: InputDecoration(
                    hintText: "Enter $title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    AppTextButton(
                      buttonText: 'Save',
                      onPressed: () {
                        Navigator.of(context).pop();
                        onSave(controller.text);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('$title updated: ${controller.text}'),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      },
                      borderRadius: 12.r,
                      backgroundColor: ColorsManager.primaryWildBlueYonder,
                      textStyle: AppTextStyles.font14WhitePoppinsMedium,
                      horizontalPadding: 5.w,
                      verticalPadding: 3.h,
                      buttonWidth: 80.w,
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
