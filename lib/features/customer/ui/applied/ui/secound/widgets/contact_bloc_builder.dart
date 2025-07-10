import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/secound_screen_model/application_details_response_body.dart';
import 'package:carrerk/features/customer/ui/applied/logic/secound_screen_logic/application_details_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/secound_screen_logic/application_details_state.dart';
import 'package:carrerk/features/customer/ui/home/ui/widgets/customer_jobs_shummer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'contact_button.dart';

class ContactUserSection extends StatelessWidget {
  final String userId;

  const ContactUserSection({
    super.key,
    required this.userId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationDetailsCubit, ApplicationDetailsState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const CustomerJobsListShimmer(),
          success: (data) => buildContactButton(context),
          error: (error) => Center(child: Text("Error: $error")),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget buildContactButton(BuildContext context) {
    return ContactButton(
      onPressed: () {
        context.pushNamed(
          Routes.chatsPersonChatScreen,
          arguments: AppArgument(
            chatRoomId: userId,
            isExisting: true,
          ),
        );
      },
    );
  }
}
