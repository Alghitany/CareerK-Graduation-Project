import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../core/helpers/spacing.dart';
import '../../data/models/profile_info_models/developer_profile_main_page_info_response_body.dart';
import '../../logic/profile_info_logic/developer_profile_main_page_info_cubit.dart';
import '../../logic/profile_info_logic/developer_profile_main_page_info_state.dart';
import 'profile_info/name_and_title.dart';
import 'profile_info/name_and_title_shimmer.dart';
import 'profile_info/phone_message_and_location_icons.dart';
import 'profile_info/phone_message_and_location_icons_shimmer.dart';
import 'profile_info/profile_top_bar.dart';
import 'profile_info/profile_top_bar_shimmer.dart';

class DeveloperProfileMainPageInfoBlocBuilder extends StatelessWidget {
  const DeveloperProfileMainPageInfoBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeveloperProfileMainPageInfoCubit,
        DeveloperProfileMainPageInfoState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (error) => setupError(error),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Column(
      children: [
        const ProfileTopBarShimmer(),
        verticalSpace(16),
        const NameAndTitleShimmer(),
        verticalSpace(16),
        const PhoneMessageAndLocationIconsShimmer(),
      ],
    );
  }

  Widget setupSuccess(DeveloperProfileMainPageInfoResponseBody data) {
    return Column(
      children: [
        ProfileTopBar(profileImage: data.profilePicture ?? ""),
        verticalSpace(16),
        NameAndTitle(
            name: "${data.firstName} ${data.lastName}",
            title: data.currentTrack ?? "No Title"),
        verticalSpace(16),
        const PhoneMessageAndLocationIcons(),
      ],
    );
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
