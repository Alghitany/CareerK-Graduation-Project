import 'package:carrerk/features/customer/ui/applied/data/model/secound_screen_model/application_details_response_body.dart';
import 'package:carrerk/features/customer/ui/applied/logic/secound_screen_logic/application_details_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/secound_screen_logic/application_details_state.dart';
import 'package:carrerk/features/customer/ui/applied/ui/secound/widgets/application_details_content.dart';
import 'package:carrerk/features/customer/ui/home/ui/widgets/customer_jobs_shummer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationDetailsBlocBuilder extends StatelessWidget {
  const ApplicationDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationDetailsCubit, ApplicationDetailsState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const CustomerJobsListShimmer();
  }

  Widget setupSuccess(ApplicationDetailsResponseBody data) {
    return ApplicationDetailsContent(data: data);
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
