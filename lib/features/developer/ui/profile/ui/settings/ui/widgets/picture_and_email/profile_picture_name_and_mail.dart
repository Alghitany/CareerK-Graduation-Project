import 'dart:io';

import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_edit_profile_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../logic/developer_profile_edit_cubit.dart';

class ProfilePictureNameAndMail extends StatelessWidget {
  final String profilePicture;
  final String firstName;
  final String email;

  const ProfilePictureNameAndMail(
      {super.key,
      required this.profilePicture,
      required this.email,
      required this.firstName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppEditProfilePicture(
          imageRadius: 60,
          editIconBackgroundRadius: 17,
          editIconHeight: 15,
          editIconWidth: 15,
          profileImage: profilePicture,
          onImageSelected: (File? imageFile) {
            if (imageFile != null) {
              final editCubit = context.read<DeveloperProfileEditCubit>();

              editCubit.setProfileImage(imageFile);
              editCubit.editDeveloperProfile();
            }
          },
        ),
        verticalSpace(8),
        Text(
          firstName,
          style: AppTextStyles.font24BlackPoppinsMedium,
        ),
        verticalSpace(8),
        Text(
          email,
          style: AppTextStyles.font12SantaGreyPoppinsMedium,
        )
      ],
    );
  }
}
