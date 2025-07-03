import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/update_application_status_logic/company_update_application_status_cubit.dart';
import '../../../logic/update_application_status_logic/company_update_application_status_state.dart';
import 'hire_buttons.dart';

class CompanyUpdateApplicationStatusBlocBuilder extends StatelessWidget {
  final String applicationId;

  const CompanyUpdateApplicationStatusBlocBuilder({
    super.key,
    required this.applicationId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyUpdateApplicationStatusCubit,
        CompanyUpdateApplicationStatusState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data.application.status),
          error: (error) => setupError(),
          orElse: () => setupSuccess('pending'),
        );
      },
    );
  }

  Widget setupLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget setupSuccess(String status) {
    return HireButtons(
      applicationId: applicationId,
      initialStatus: status,
    );
  }

  Widget setupError() {
    return Column(
      children: [
        const Text("Something went wrong"),
        const SizedBox(height: 8),
        HireButtons(
          applicationId: applicationId,
          initialStatus: 'pending',
        ),
      ],
    );
  }
}
