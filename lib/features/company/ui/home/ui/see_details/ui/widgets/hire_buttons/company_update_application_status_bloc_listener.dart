import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../logic/update_application_status_logic/company_update_application_status_cubit.dart';
import '../../../../../logic/update_application_status_logic/company_update_application_status_state.dart';

class CompanyUpdateApplicationStatusBlocListener extends StatelessWidget {
  const CompanyUpdateApplicationStatusBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CompanyUpdateApplicationStatusCubit,
        CompanyUpdateApplicationStatusState>(
      listenWhen: (previous, current) => current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: (data) => _showSuccessSnackBar(context, data.message),
          error: (error) => _showErrorDialog(context, error),
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _showSuccessSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTextStyles.font15GlaucousPoppinsSemiBold.copyWith(
            color: Colors.white,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: ColorsManager.primaryWildBlueYonder,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(milliseconds: 1250),
      ),
    );
  }

  void _showErrorDialog(BuildContext context, String error) {
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
            onPressed: () => context.pop(),
            child: Text(
              'Got it',
              style: AppTextStyles.font15GlaucousPoppinsSemiBold,
            ),
          )
        ],
      ),
    );
  }
}
