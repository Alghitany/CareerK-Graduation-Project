import 'package:carrerk/features/customer/ui/applied/data/model/first_screen_model/applications_response_body.dart';
import 'package:carrerk/features/customer/ui/applied/logic/first_screen_logic/applications_cubit.dart';
import 'package:carrerk/features/customer/ui/applied/logic/first_screen_logic/applications_state.dart';
import 'package:carrerk/features/customer/ui/applied/ui/first/widgets/applied_people_container.dart';

import 'package:carrerk/features/customer/ui/home/ui/widgets/customer_jobs_shummer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationsBlocBuilder extends StatelessWidget {
  const ApplicationsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationsCubit, ApplicationsState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const CustomerJobsListShimmer();
  }

  Widget setupSuccess(ApplicationsResponseBody data) {
    return AppliedPeople(applications: data.applications);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
