import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/developer_job_withdraw_logic/developer_job_withdraw_cubit.dart';
import '../../logic/developer_job_withdraw_logic/developer_job_withdraw_state.dart';

class DeveloperJobWithdrawBlocListener extends StatelessWidget {
  final VoidCallback onWithdrawSuccess;

  const DeveloperJobWithdrawBlocListener(
      {super.key, required this.onWithdrawSuccess});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeveloperJobWithdrawCubit, DeveloperJobWithdrawState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          success: (data) {
            context.pop(); // remove loading dialog
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(data.message ??
                      'Job application withdrawn successfully')),
            );
            onWithdrawSuccess();
          },
          error: (error) {
            context.pop(); // remove loading dialog
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                icon: const Icon(Icons.error, color: Colors.red, size: 32),
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
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
