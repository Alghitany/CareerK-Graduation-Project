import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/routing/routes.dart';
import '../logic/by_interest_logic/developer_community_by_interest_cubit.dart';
import 'widgets/by_interest_communities/by_interest_bloc_builder.dart';
import 'widgets/community_tags/community_tags_bloc_builder.dart';
import 'widgets/for_you_communities/for_you_bloc_builder.dart';

class DeveloperCommunityAllCommunitiesScreen extends StatelessWidget {
  const DeveloperCommunityAllCommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.h),
          child: Column(
            children: [
              const AppBackIcon(),
              Text(
                'Community',
                style: AppTextStyles.font24BlackPoppinsSemiBold,
              ),
              verticalSpace(16),
              AppSearchTextFormField(onTap: () {
                context.pushNamed(Routes.searchScreen);
              }),
              verticalSpace(32),
              const ForYouBlocBuilder(),
              verticalSpace(32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Communities by interests',
                  style: AppTextStyles.font16BlackPoppinsSemiBold,
                ),
              ),
              verticalSpace(8),
              CommunityTagsBlocBuilder(
                onTagSelected: (tag) {
                  context
                      .read<DeveloperCommunityByInterestCubit>()
                      .getCommunitiesByInterest(tag);
                },
              ),
              verticalSpace(16),
              const ByInterestBlocBuilder(),
            ],
          ),
        ),
      )),
    );
  }
}
