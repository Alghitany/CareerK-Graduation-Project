import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_edit_logic/customer_profile_edit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../../core/widgets/app_edit_profile_picture.dart';

class ProfileImageNameAndLocation extends StatelessWidget {
  final String? profileImage;
  final String? customerName;

  const ProfileImageNameAndLocation({
    super.key,
    this.profileImage,
    this.customerName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0.0.w, 8.h, 0.w, 0.h),
          child: AppEditProfilePicture(
            profileImage: profileImage ?? " ",
            imageRadius: 60,
            editIconBackgroundRadius: 15,
            editIconHeight: 15,
            editIconWidth: 15,
            onImageSelected: (file) {
              if (file != null) {
                context
                    .read<CustomerProfileEditCubit>()
                    .setProfilePicturePath(file.path);
                context.read<CustomerProfileEditCubit>().editCustomerProfile();

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Profile picture updated successfully!')),
                );
              }
            },
          ),
        ),
        verticalSpace(34),
        Text(
          customerName ?? 'Unknown Name',
          style: AppTextStyles.font16BlackPoppinsSemiBold,
        ),
      ],
    );
  }

  Widget shimmerImagePlaceholder() {
    return Shimmer.fromColors(
      baseColor: ColorsManager.pastelGrey.withValues(alpha: (0.5 * 255)),
      highlightColor:
          ColorsManager.silverChalice.withValues(alpha: (0.3 * 255)),
      child: Container(
        width: 104.w,
        height: 104.h,
        color: ColorsManager.pastelGrey,
      ),
    );
  }
}
