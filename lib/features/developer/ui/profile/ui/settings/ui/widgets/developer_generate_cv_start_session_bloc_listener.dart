import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../core/theming/colors.dart';
import '../../logic/developer_generate_cv_start_session_logic/developer_generate_cv_start_session_cubit.dart';
import '../../logic/developer_generate_cv_start_session_logic/developer_generate_cv_start_session_state.dart';

class DeveloperGenerateCVStartSessionBlocListener extends StatelessWidget {
  const DeveloperGenerateCVStartSessionBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeveloperGenerateCVStartSessionCubit,
        DeveloperGenerateCVStartSessionState>(
      listenWhen: (previous, current) =>
          current is SessionStarting ||
          current is SessionStartedSuccess ||
          current is SessionStartError,
      listener: (context, state) {
        state.whenOrNull(
          sessionStarting: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          sessionStartedSuccess: (response) {
            context.pop();
            // Navigate with sessionId
            context.pushNamed(
              Routes.developerProfileCVGenerateScreen,
              arguments: AppArgument(sessionId: response.sessionId),
            );
          },
          sessionStartError: (error) {
            _showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void _showErrorDialog(BuildContext context, String error) {
    context.pop();
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
