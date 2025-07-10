import 'dart:io';

import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_edit_profile_picture.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/developer_profile_edit_cubit.dart';
import '../../logic/developer_profile_edit_state.dart';
import 'widgets/edit_profile_form.dart';

class DeveloperProfileEditProfileScreen extends StatelessWidget {
  const DeveloperProfileEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeveloperProfileEditCubit, DeveloperProfileEditState>(
      listenWhen: (previous, current) => current is EditProfileSuccess,
      listener: (context, state) {
        state.whenOrNull(
          editProfileSuccess: (response) {
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                // Makes it float above content
                margin: const EdgeInsets.all(16),
                // Adds margin around it
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                elevation: 6,
                content: Row(
                  children: [
                    const Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Profile updated successfully!',
                        style: AppTextStyles.font14WhitePoppinsMedium,
                      ),
                    ),
                  ],
                ),
                backgroundColor: ColorsManager.primaryWildBlueYonder,
                duration: const Duration(seconds: 3),
              ),
            );
          },
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.0.w, 16.h, 16.w, 0.h),
              child: Column(
                children: [
                  const AppBackIcon(),
                  verticalSpace(16),
                  Text(
                    'Edit Profile',
                    style: AppTextStyles
                        .font24SecondaryWildBlueYonderPoppinsSemiBold,
                  ),
                  verticalSpace(24),
                  AppEditProfilePicture(
                    imageRadius: 60,
                    editIconBackgroundRadius: 15,
                    editIconHeight: 15,
                    editIconWidth: 15,
                    onImageSelected: (File? imageFile) {
                      if (imageFile != null) {
                        context
                            .read<DeveloperProfileEditCubit>()
                            .setProfileImage(imageFile);
                      }
                    },
                  ),
                  verticalSpace(40),
                  const EditProfileForm(),
                  verticalSpace(40),
                  AppTextButton(
                    onPressed: () {
                      final editCubit =
                          context.read<DeveloperProfileEditCubit>();
                      if (editCubit.editFormKey.currentState!.validate()) {
                        editCubit.editDeveloperProfile();
                      }
                    },
                    buttonText: 'Update',
                    textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
