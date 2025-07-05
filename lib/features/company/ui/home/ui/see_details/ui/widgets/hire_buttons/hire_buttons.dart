import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../../core/widgets/app_text_button.dart';
import '../../../../../data/models/update_application_status_model/company_update_application_status_request_body.dart';
import '../../../../../logic/update_application_status_logic/company_update_application_status_cubit.dart';
import '../../../../../logic/update_application_status_logic/company_update_application_status_state.dart';

class HireButtons extends StatelessWidget {
  final String applicationId;
  final String initialStatus;

  const HireButtons({
    super.key,
    required this.applicationId,
    required this.initialStatus,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyUpdateApplicationStatusCubit,
        CompanyUpdateApplicationStatusState>(
      builder: (context, state) {
        final isLoading = state is Loading;

        final currentStatus = state.maybeWhen(
          success: (data) => data.application.status,
          orElse: () => initialStatus,
        );

        return Row(
          children: [
            _buildAcceptButton(context, isLoading, currentStatus),
            horizontalSpace(16),
            _buildRejectOrUndoButton(context, isLoading, currentStatus),
          ],
        );
      },
    );
  }

  Widget _buildAcceptButton(
      BuildContext context, bool isLoading, String status) {
    final isAccepted = status == 'accepted';

    return Expanded(
      child: AppTextButton(
        buttonText: status == 'pending'
            ? 'Accept'
            : (isAccepted ? 'Accepted' : 'Rejected'),
        backgroundColor: status == 'pending'
            ? ColorsManager.cloverGreen
            : (isAccepted
                ? ColorsManager.cloverGreen
                : ColorsManager.artyClickRed),
        textStyle: AppTextStyles.font14WhitePoppinsMedium,
        onPressed: (!isLoading && status == 'pending')
            ? () => _updateStatus(context, 'accepted')
            : () {},
      ),
    );
  }

  Widget _buildRejectOrUndoButton(
      BuildContext context, bool isLoading, String status) {
    final isPending = status == 'pending';

    return Expanded(
      child: AppTextButton(
        buttonText: isPending ? 'Reject' : 'Undo',
        backgroundColor:
            isPending ? ColorsManager.artyClickRed : ColorsManager.ironSideGrey,
        textStyle: AppTextStyles.font14WhitePoppinsMedium,
        onPressed: isLoading
            ? () {}
            : () {
                final newStatus = isPending ? 'rejected' : 'pending';
                _updateStatus(context, newStatus);
              },
      ),
    );
  }

  void _updateStatus(BuildContext context, String status) {
    context
        .read<CompanyUpdateApplicationStatusCubit>()
        .emitUpdateApplicationStatusStates(
          applicationId: applicationId,
          requestBody: CompanyUpdateStatusRequestBody(status: status),
        );
  }
}
