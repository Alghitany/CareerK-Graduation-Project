import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../../widgets/developer_details/developer_details.dart';
import '../../../widgets/developer_details/developer_details_shimmer.dart';
import '../../../widgets/name_title_and_image/name_title_and_image.dart';
import '../../../widgets/name_title_and_image/name_title_and_image_shimmer.dart';
import '../../../widgets/salary_and_location/salary_and_location.dart';
import '../../../widgets/salary_and_location/salary_and_location_shimmer.dart';
import '../../data/model/company_home_see_details_response_body.dart';
import '../../logic/company_home_see_details_cubit.dart';
import '../../logic/company_home_see_details_state.dart';

class SeeDetailsBlocBuilder extends StatelessWidget {
  const SeeDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyHomeSeeDetailsCubit,
        CompanyHomeSeeDetailsState<CompanyHomeSeeDetailsResponseBody>>(
      buildWhen: (previous, current) =>
          current is Loading ||
          current is Success<CompanyHomeSeeDetailsResponseBody> ||
          current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => _buildLoading(),
          success: (data) => _buildSuccess(data),
          error: (error) => _buildError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget _buildLoading() {
    return Column(
      children: [
        const NameTitleAndImageShimmer(),
        verticalSpace(64),
        const SalaryAndLocationShimmer(),
        verticalSpace(40),
        const DeveloperDetailsShimmer()
      ],
    );
  }

  Widget _buildSuccess(CompanyHomeSeeDetailsResponseBody data) {
    return Column(
      children: [
        NameTitleAndImage(
          applicantName: data.applicantName ?? "No Name",
          trackTitle: data.trackTitle ?? "No Track",
          profileImageUrl: data.profilePicture ?? "",
        ),
        verticalSpace(64),
        SalaryAndLocation(
          salaryRange: data.expectedSalary ?? "No Salary",
          location: "${data.city}, ${data.country}",
        ),
        verticalSpace(40),
        DeveloperDetails(
          details: data.briefBio ?? "No Details",
        ),
      ],
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
