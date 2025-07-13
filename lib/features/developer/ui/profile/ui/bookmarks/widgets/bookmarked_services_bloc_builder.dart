import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/developer_profile_services_bookmarked_models/developer_profile_services_bookmarked_response_body.dart';
import '../logic/developer_profile_services_bookmarked_logic/developer_profile_services_bookmarked_cubit.dart';
import '../logic/developer_profile_services_bookmarked_logic/developer_profile_services_bookmarked_state.dart';
import 'services/bookmarked_services_list.dart';
import 'services/bookmarked_services_list_shimmer.dart';

class BookmarkedServicesBlocBuilder extends StatelessWidget {
  const BookmarkedServicesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileServicesBookmarkedCubit,
        DeveloperProfileServicesBookmarkedState>(
      buildWhen: (previous, current) =>
          current is DeveloperProfileServicesBookmarkedLoading ||
          current is DeveloperProfileServicesBookmarkedSuccess ||
          current is DeveloperProfileServicesBookmarkedError,
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const BookmarkedServicesListShimmer(),
          success: (data) => _buildSuccess(data),
          error: (error) => _buildError(error),
        );
      },
    );
  }

  Widget _buildSuccess(
      List<DeveloperProfileServicesBookmarkedResponseBody> data) {
    if (data.isEmpty) {
      return const Center(child: Text("No bookmarked services found."));
    }
    return BookmarkedServicesList(services: data);
  }

  Widget _buildError(String? error) {
    return Center(
      child: Text("Error: ${error ?? 'Unknown error'}"),
    );
  }
}
