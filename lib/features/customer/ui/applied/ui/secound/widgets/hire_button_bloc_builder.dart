import 'package:carrerk/features/customer/ui/applied/logic/reject_applications_logic/reject_applications_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/reject_applications_logic/reject_applications_state.dart';
import 'package:carrerk/features/customer/ui/applied/ui/first/widgets/reject_buttons_shimmer.dart';
import 'package:carrerk/features/customer/ui/applied/ui/secound/widgets/hired_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/networking/api_error_model.dart';

class HireButtonBlocBuilder extends StatelessWidget {
  final String applicationId;

  const HireButtonBlocBuilder({
    super.key,
    required this.applicationId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RejectApplicationCubit, RejectApplicationState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const RejectButtonsShimmer(),
          success: (data) {
            // لو الـ id ده هو نفسه اللي اترفض، نعرض ✅
            if (data.application.id == applicationId) {
              return const Center(child: Text("✅ Application hired"));
            }
            // لو مش هو، نظهر الـ buttons عادي
            return setupInitial(context);
          },
          error: (apiErrorModel) => setupError(apiErrorModel),
          orElse: () => setupInitial(context),
        );
      },
    );
  }

  Widget setupInitial(BuildContext context) {
    return HireButton(
      id: applicationId,
      onHire: () {
        print("iddddddddd   $applicationId ");
        context.read<RejectApplicationCubit>().rejectApplication(
              applicationId: applicationId,
              status: "accepted",
            );
      },
    );
  }

  Widget setupError(ApiErrorModel apiErrorModel) {
    return Center(child: Text("❌ ${apiErrorModel.getAllErrorMessages()}"));
  }
}
