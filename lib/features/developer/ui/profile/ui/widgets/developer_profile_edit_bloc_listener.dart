import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../logic/developer_profile_edit_cubit.dart';
import '../../logic/developer_profile_edit_state.dart';

class DeveloperProfileEditBlocListener extends StatelessWidget {
  const DeveloperProfileEditBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeveloperProfileEditCubit, DeveloperProfileEditState>(
      listenWhen: (previous, current) =>
          current is EditProfileLoading ||
          current is EditProfileSuccess ||
          current is EditProfileError,
      listener: (context, state) {
        state.whenOrNull(
          editProfileLoading: () {
            showLoadingDialog(context);
          },
          editProfileSuccess: (response) {
            context.pop(); // Dismiss loading dialog

            context.pushNamed(Routes.developerProfileMainPageScreen);

            showSuccessSnackBar(context, 'Profile updated successfully!');
          },
          editProfileError: (error) {
            context.pop(); // Dismiss loading dialog
            showErrorSnackBar(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent accidental dismiss
      builder: (context) => const Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Center(
          child: CircularProgressIndicator(
            color: ColorsManager.primaryWildBlueYonder,
          ),
        ),
      ),
    );
  }

  void showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: AppTextStyles.font14WhitePoppinsMedium),
        backgroundColor: ColorsManager.primaryWildBlueYonder,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  void showErrorSnackBar(BuildContext context, String error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(error, style: AppTextStyles.font14WhitePoppinsMedium),
        backgroundColor: ColorsManager.artyClickRed,
      ),
    );
  }
}
