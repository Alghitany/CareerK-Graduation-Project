import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/features/customer/ui/sign_up/logic/customer_sign_up_cubit.dart';
import 'package:carrerk/features/customer/ui/sign_up/logic/customer_sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/theming/colors.dart';
import '../../../../../../../core/theming/styles.dart';

class CustomerSignupBlocListener extends StatelessWidget {
  const CustomerSignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerSignUpCubit, CustomerSignUpState>(
      listenWhen: (previous, current) =>
          current is CustomerSignupLoading ||
          current is CustomerSignupSuccess ||
          current is CustomerSignupError,
      listener: (context, state) {
        state.whenOrNull(
          customerSignupLoading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.primaryWildBlueYonder,
                ),
              ),
            );
          },
          customerSignupSuccess: (companySignUpResponse) {
            context.pop(); // close loading
            showSuccessDialog(context);
          },
          customerSignupError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Congratulations, new customer has been registered successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.loginScreen); // or another route
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
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
          ),
        ],
      ),
    );
  }
}
