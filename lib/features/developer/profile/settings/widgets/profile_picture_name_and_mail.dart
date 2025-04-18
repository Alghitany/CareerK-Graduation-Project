import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_edit_profile_picture.dart';
import 'package:flutter/material.dart';

class ProfilePictureNameAndMail extends StatelessWidget {
  const ProfilePictureNameAndMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppEditProfilePicture(
          imageRadius: 60,
          editIconBackgroundRadius: 17,
          editIconHeight: 15,
          editIconWidth: 15,
        ),
        verticalSpace(8),
        Text(
          'Ali',
          style: AppTextStyles.font24BlackPoppinsMedium,
        ),
        verticalSpace(8),
        Text(
          'example@gmail.com',
          style: AppTextStyles.font12SantaGreyPoppinsMedium,
        )
      ],
    );
  }
}
