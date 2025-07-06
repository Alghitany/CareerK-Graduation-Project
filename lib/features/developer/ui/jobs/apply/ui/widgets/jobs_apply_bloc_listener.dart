import 'package:carrerk/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';
import '../../logic/developer_jobs_apply_cubit.dart';
import '../../logic/developer_jobs_apply_state.dart';

class JobsApplyBlocListener extends StatelessWidget {
  const JobsApplyBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeveloperJobsApplyCubit, DeveloperJobsApplyState>(
      listenWhen: (previous, current) =>
          current is JobsApplyLoading ||
          current is JobsApplySuccess ||
          current is JobsApplyError,
      listener: (context, state) {
        state.whenOrNull(
          jobsApplyLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          jobsApplySuccess: (response) {
            context.pop(); // dismiss loading
            context.pushNamed(Routes.developerJobsApplicationSubmittedScreen);
          },
          jobsApplyError: (error) {
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
