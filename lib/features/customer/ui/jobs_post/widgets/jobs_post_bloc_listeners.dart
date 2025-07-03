import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/features/customer/logic/customer_jobs_post_cubit.dart';
import 'package:carrerk/features/customer/logic/customer_jobs_post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/theming/colors.dart';

class JobsPostBlocListener extends StatelessWidget {
  const JobsPostBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerJobsPostCubit, CustomerJobsPostState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          success: (data) {
            context.pop(); // Remove loading dialog
            context.pushNamed(
              Routes.customerHomeMainPageScreen,
              arguments: AppArgument(jobId: data.job!.id!),
            );
          },
          error: (errorMessage) {
            setupErrorState(context, errorMessage);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop(); // remove loading
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
              context.pop();
            },
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
