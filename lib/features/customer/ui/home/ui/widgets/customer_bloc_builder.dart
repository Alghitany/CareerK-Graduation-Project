import 'package:carrerk/features/customer/ui/home/logic/customer_home_cubit.dart';
import 'package:carrerk/features/customer/ui/home/logic/customer_home_state.dart';
import 'package:carrerk/features/customer/ui/home/model/model/customer_home_response_body.dart';
import 'package:carrerk/features/customer/ui/home/ui/widgets/customer_jobs.dart';
import 'package:carrerk/features/customer/ui/home/ui/widgets/customer_jobs_shummer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerBlocBuilder extends StatelessWidget {
  const CustomerBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerHomeCubit, CustomerHomeState>(
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

  Widget setupSuccess(CustomerHomeResponseBody data) {
    if (data.services.isEmpty) {
      return const Center(child: Text("No services found"));
    }
    return CustomerJobs(jobs: data.services);
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
