import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../logic/login_cubit.dart';
import '../../logic/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
        listenWhen: (previous, current) =>
            current is Loading || current is Success || current is Error,
        listener: (context, state) {
          state.whenOrNull(loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          }, success: (loginResponse) {
            context.pop;
            context.pop();

            final role = loginResponse.user?.role?.toLowerCase();

            switch (role) {
              case 'customer':
                context.pushNamed(Routes.companyHomeMainPageScreen);
                break;
              case 'company':
                context.pushNamed(Routes.companyHomeMainPageScreen);
                break;
              case 'developer':
                context.pushNamed(Routes.developerHomeMainPageScreen);
                break;
              default:
                setupErrorState(context, 'Unknown user role: $role');
            }
          }, error: (error) {
            setupErrorState(context, error);
          });
        },
        child: const SizedBox.shrink());
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
                )
              ],
            ));
  }
}
