import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/models/developer_services_recently_posted_models/developer_services_recently_posted_response_body.dart';
import '../../../../logic/developer_services_recently_posted_logic/developer_services_recently_posted_cubit.dart';
import '../../../../logic/developer_services_recently_posted_logic/developer_services_recently_posted_state.dart';
import 'developer_recently_posted_services_list.dart';
import 'developer_recently_posted_services_shimmer.dart';

class DeveloperRecentlyPostedServicesBlocBuilder extends StatelessWidget {
  const DeveloperRecentlyPostedServicesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperServicesRecentlyPostedCubit,
        DeveloperServicesRecentlyPostedState>(
      buildWhen: (previous, current) =>
          current is RecentlyPostedLoading ||
          current is RecentlyPostedSuccess ||
          current is RecentlyPostedError,
      builder: (context, state) {
        return state.maybeWhen(
          recentlyPostedLoading: () => setupLoading(),
          recentlyPostedSuccess: (services) => setupSuccess(services),
          recentlyPostedError: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const DeveloperRecentlyPostedServicesShimmer();
  }

  Widget setupSuccess(
      List<DeveloperServicesRecentlyPostedResponseBody> services) {
    return DeveloperRecentlyPostedServicesList(services: services);
  }

  Widget setupError(String error) {
    return Center(child: Text(error));
  }
}
