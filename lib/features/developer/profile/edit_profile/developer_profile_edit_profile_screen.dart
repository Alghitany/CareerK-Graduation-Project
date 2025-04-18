import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_edit_profile_picture.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/developer/profile/edit_profile/widgets/edit_profile_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperProfileEditProfileScreen extends StatelessWidget {
  const DeveloperProfileEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0.w,16.h,16.w,0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Edit Profile',
                style: AppTextStyles.font24SecondaryWildBlueYonderPoppinsSemiBold,
              ),
              verticalSpace(24),
              const AppEditProfilePicture(
                imageRadius: 60,
                editIconBackgroundRadius: 15,
                editIconHeight: 15,
                editIconWidth: 15,
              ),
              verticalSpace(40),
              const EditProfileForm(),
              verticalSpace(40),
              AppTextButton(
                  onPressed: (){
                    // TODO: I think a dialog should appear here
                  },
                buttonText: 'Update',
                textStyle: AppTextStyles.font14WhitePoppinsMedium,
              )
            ],
          ),
        ),
      ),
    );
  }
}
