import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/theming/colors.dart';
import '../../../logic/send_data_logic/developer_profile_cv_generate_send_data_cubit.dart';
import '../../../logic/send_data_logic/developer_profile_cv_generate_send_data_state.dart';

class DeveloperProfileCVGenerateSendDataBlocListener extends StatelessWidget {
  final String sessionId;

  const DeveloperProfileCVGenerateSendDataBlocListener(
      {super.key, required this.sessionId});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeveloperProfileCVGenerateSendDataCubit,
        DeveloperProfileCVGenerateSendDataState>(
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
            context.pop(); // close loading
            context.pushNamed(Routes.developerProfileCvGeneratedViewScreen,
                arguments: AppArgument(sessionId: sessionId));
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop(); // close loading
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
