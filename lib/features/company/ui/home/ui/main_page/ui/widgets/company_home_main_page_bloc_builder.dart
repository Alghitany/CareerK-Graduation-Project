import 'package:carrerk/features/company/ui/home/ui/main_page/ui/widgets/recent_people_applied/recent_people_applied.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/helpers/spacing.dart';
import '../../data/model/company_home_main_page_response_body.dart';
import '../../logic/company_home_main_page_cubit.dart';
import '../../logic/company_home_main_page_state.dart';
import 'available_people/available_developers_shimmer.dart';
import 'available_people/available_people_text_and_list.dart';
import 'home_page_top_bar/home_page_top_bar.dart';
import 'home_page_top_bar/home_page_top_bar_shimmer.dart';
import 'recent_people_applied/recent_people_applied_shimmer.dart';

class CompanyHomeMainPageBlocBuilder extends StatelessWidget {
  const CompanyHomeMainPageBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyHomeMainPageCubit,
        CompanyHomeMainPageState<CompanyHomeMainPageResponseBody>>(
      buildWhen: (previous, current) =>
          current is Loading ||
          current is Success<CompanyHomeMainPageResponseBody> ||
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomePageTopBarShimmer(),
        verticalSpace(40),
        const AvailableDevelopersShimmer(),
        verticalSpace(24),
        const RecentPeopleAppliedShimmer(),
      ],
    );
  }

  Widget _buildSuccess(CompanyHomeMainPageResponseBody data) {
    return Column(
      children: [
        HomePageTopBar(
          companyName: data.companyInfo?.companyName,
          industry: data.companyInfo?.industry,
          profilePicture: data.companyInfo?.profilePicture,
        ),
        verticalSpace(40),
        AvailablePeopleTextAndList(
          availableDevelopers: data.availableDevelopers ?? [],
        ),
        verticalSpace(24),
        RecentPeopleApplied(
          recentDevelopers: data.recentAppliedDevelopers ?? [],
        ),
      ],
    );
  }

  Widget _buildError(String error) {
    return Center(child: Text(error));
  }
}
