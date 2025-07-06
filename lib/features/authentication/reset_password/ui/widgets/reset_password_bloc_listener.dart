import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../logic/reset_password_cubit.dart';
import '../../logic/reset_password_state.dart';

class ResetPasswordBlocListener extends StatelessWidget {
  const ResetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
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
            context.pop();

            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                icon: const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 32,
                ),
                content: Text(
                  response.message ?? "Success",
                  style: AppTextStyles.font15GlaucousPoppinsSemiBold,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      context.pop();
                      context.pushNamed(Routes.verifyCodeScreen);
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
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
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
          ),
        ],
      ),
    );
  }
}
