import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main_page/data/models/profile_info_models/developer_profile_main_page_info_response_body.dart';
import '../../../main_page/logic/profile_info_logic/developer_profile_main_page_info_cubit.dart';
import '../../../main_page/logic/profile_info_logic/developer_profile_main_page_info_state.dart';
import 'picture_and_email/profile_picture_name_and_email_shimmer.dart';
import 'picture_and_email/profile_picture_name_and_mail.dart';

class ProfilePictureNameAndMailBlocBuilder extends StatelessWidget {
  const ProfilePictureNameAndMailBlocBuilder({super.key});

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
    return const Column(
      children: [ProfilePictureNameAndEmailShimmer()],
    );
  }

  Widget setupSuccess(DeveloperProfileMainPageInfoResponseBody data) {
    return Column(
      children: [
        ProfilePictureNameAndMail(
          profilePicture: data.profilePictureLink ?? "",
          email: data.email ?? "No email",
          firstName: data.firstName ?? "No name",
        ),
      ],
    );
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
