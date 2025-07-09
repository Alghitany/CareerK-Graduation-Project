import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/helpers/spacing.dart';
import '../../../data/models/post_details_models/job_details_response_body.dart';
import '../../../logic/post_details_logic/job_details_cubit.dart';
import '../../../logic/post_details_logic/job_details_state.dart';
import 'job_details/coin_icon_and_salary.dart';
import 'job_details/job_description.dart';
import 'job_details/job_name_location_type_post_date.dart';
import 'job_details_shimmer/coin_icon_and_salary_shimmer.dart';
import 'job_details_shimmer/job_description_shimmer.dart';
import 'job_details_shimmer/job_name_location_type_post_date_shimmer.dart';

class JobDetailsBlocBuilder extends StatelessWidget {
  const JobDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobDetailsCubit, JobDetailsState>(
      buildWhen: (previous, current) =>
          current is JobDetailsLoading ||
          current is JobDetailsSuccess ||
          current is JobDetailsError,
      builder: (context, state) {
        return state.maybeWhen(
          jobDetailsLoading: () => _buildLoading(),
          jobDetailsSuccess: (data) => _buildSuccess(data),
          jobDetailsError: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return Column(
      children: [
        const JobNameLocationTypePostDateShimmer(),
        verticalSpace(40),
        const CoinIconAndSalaryShimmer(),
        verticalSpace(40),
        const JobDescriptionShimmer(),
      ],
    );
  }

  Widget _buildSuccess(JobDetailsResponseBody data) {
    return Column(
      children: [
        JobNameLocationTypePostDate(data: data),
        verticalSpace(40),
        CoinIconAndSalary(salaryRange: data.salaryRange),
        verticalSpace(40),
        JobDescription(description: data.jobDescription),
      ],
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
