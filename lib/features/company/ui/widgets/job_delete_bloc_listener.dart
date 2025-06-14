import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/company_jobs_delete_post_cubit.dart';
import '../../logic/company_jobs_delete_post_state.dart';

class JobDeleteBlocListener extends StatelessWidget {
  final VoidCallback onDeleteSuccess;

  const JobDeleteBlocListener({super.key, required this.onDeleteSuccess});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CompanyJobsDeletePostCubit, CompanyJobsDeletePostState>(
      listenWhen: (previous, current) =>
          current is DeleteLoading ||
          current is DeleteSuccess ||
          current is DeleteError,
      listener: (context, state) {
        state.whenOrNull(
          deleteLoading: () {
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
          deleteSuccess: (_) {
            context.pop(); // remove loading
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Job deleted successfully')),
            );
            onDeleteSuccess();
          },
          deleteError: (error) {
            context.pop(); // remove loading
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
