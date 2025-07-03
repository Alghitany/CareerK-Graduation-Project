import 'package:carrerk/core/helpers/date_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../data/model/developer_jobs_service_details_response_body.dart';
import '../../logic/developer_jobs_service_details_cubit.dart';
import '../../logic/developer_jobs_service_details_state.dart';
import 'service_details/service_description_and_keywords.dart';
import 'service_details/service_name_bookmark_budget_and_time.dart';
import 'service_details_shimmer/service_description_and_keywords_shimmer.dart';
import 'service_details_shimmer/service_name_bookmark_budget_and_time_shimmer.dart';

class DeveloperJobsServiceDetailsBlocBuilder extends StatelessWidget {
  const DeveloperJobsServiceDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperJobsServiceDetailsCubit,
        DeveloperJobsServiceDetailsState>(
      buildWhen: (previous, current) =>
          current is ServiceDetailsLoading ||
          current is ServiceDetailsSuccess ||
          current is ServiceDetailsError,
      builder: (context, state) {
        return state.maybeWhen(
          serviceDetailsLoading: () => _buildLoading(),
          serviceDetailsSuccess: (data) => _buildSuccess(data),
          serviceDetailsError: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return Column(
      children: [
        const ServiceNameBookmarkBudgetAndTimeShimmer(),
        verticalSpace(40),
        const ServiceDescriptionAndKeywordsShimmer(),
      ],
    );
  }

  Widget _buildSuccess(DeveloperJobsServiceDetailsResponseBody data) {
    final post = data.post;
    return post == null
        ? const Center(child: Text('No service details found.'))
        : Column(
            children: [
              ServiceNameBookmarkBudgetAndTime(
                serviceTitle: post.title ?? '',
                budget: post.budgetRange ?? '',
                timeLabel: 'Posted',
                timeValue: formatTime(post.deadline),
                serviceId: post.id ?? '',
              ),
              verticalSpace(72),
              ServiceDescriptionAndKeywords(
                description: post.description ?? '',
                keywords: post.requiredSkills ?? [],
              ),
            ],
          );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
