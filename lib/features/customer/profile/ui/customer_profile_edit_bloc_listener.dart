import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_edit_logic/customer_profile_edit_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_edit_logic/customer_profile_edit_state.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_info_logic/customer_profile_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';

class CustomerProfileEditBlocListener extends StatelessWidget {
  const CustomerProfileEditBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerProfileEditCubit, CustomerProfileEditState>(
      listenWhen: (previous, current) =>
          current is ProfileEditLoading ||
          current is ProfileEditSuccess ||
          current is ProfileEditError,
      listener: (context, state) {
        state.whenOrNull(
          profileEditLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          profileEditSuccess: (response) {
            context.pop(); // dismiss loading dialog

            context.read<CustomerProfileInfoCubit>().getCustomerProfileInfo();

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 32,
                ),
                content: Text(
                  'Profile updated successfully!',
                  style: AppTextStyles.font15GlaucousPoppinsSemiBold,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop(); // dismiss success dialog
                    },
                    child: Text(
                      'OK',
                      style: AppTextStyles.font15GlaucousPoppinsSemiBold,
                    ),
                  ),
                ],
              ),
            );
          },
          profileEditError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop(); // dismiss loading
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: AppTextStyles.font15GlaucousPoppinsSemiBold,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop(); // dismiss error dialog
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font15GlaucousPoppinsSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
