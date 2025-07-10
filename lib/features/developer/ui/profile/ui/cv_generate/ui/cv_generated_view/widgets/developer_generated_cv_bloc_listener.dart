import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/styles.dart';
import '../../../logic/generate_logic/developer_profile_cv_generate_generated_cubit.dart';
import '../../../logic/generate_logic/developer_profile_cv_generate_generated_state.dart';

class DeveloperGeneratedCVBlocListener extends StatelessWidget {
  const DeveloperGeneratedCVBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeveloperProfileCVGenerateGeneratedCubit,
        DeveloperProfileCVGenerateGeneratedState>(
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
          success: (response) {
            Navigator.of(context, rootNavigator: true).pop(); // Close loading
          },
          error: (error) {
            _showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _showErrorDialog(BuildContext context, String error) {
    Navigator.of(context, rootNavigator: true).pop(); // Close loading
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
              Navigator.of(context).pop();
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
