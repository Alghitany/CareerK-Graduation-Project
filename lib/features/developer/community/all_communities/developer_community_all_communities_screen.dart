import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_search_text_form_field.dart';
import 'package:carrerk/features/developer/community/all_communities/widgets/by_interest_chips_list.dart';
import 'package:carrerk/features/developer/community/all_communities/widgets/by_interest_community_list.dart';
import 'package:carrerk/features/developer/community/all_communities/widgets/for_you_horizontal_communities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeveloperCommunityAllCommunitiesScreen extends StatelessWidget {
  const DeveloperCommunityAllCommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                const AppSearchTextFormField(),
                verticalSpace(32),
                const ForYouCommunityList(),
                verticalSpace(32),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Communities by interests',
                    style: AppTextStyles.font16BlackPoppinsSemiBold,
                  ),
                ),
                verticalSpace(8),
                const ByInterestChipsList(),
                verticalSpace(16),
                const ByInterestCommunityList(),
              ],
            ),
          )
      ),
    );
  }
}
