import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../data/models/company_profile_models/company_profile_response_body.dart';
import '../../logic/company_profile_info_logic/company_profile_info_cubit.dart';
import '../../logic/company_profile_info_logic/company_profile_info_state.dart';
import 'profile_info/profile_icons.dart';
import 'profile_info/profile_icons_shimmer.dart';
import 'profile_info/profile_image_name_and_location.dart';
import 'profile_info/profile_image_name_and_location_shimmer.dart';

class ProfileInfoBlocBuilder extends StatelessWidget {
  const ProfileInfoBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompanyProfileInfoCubit, CompanyProfileInfoState>(
      buildWhen: (previous, current) =>
          current is CompanyProfileInfoLoading ||
          current is CompanyProfileInfoSuccess ||
          current is CompanyProfileInfoError,
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
        const ProfileImageNameAndLocationShimmer(),
        verticalSpace(16),
        const ProfileIconsShimmer(),
      ],
    );
  }

  Widget setupSuccess(CompanyProfileResponseBody data) {
    return Column(
      children: [
        ProfileImageNameAndLocation(
          profileImage: data.profilePicture,
          companyName: data.companyName,
          city: data.city,
        ),
        verticalSpace(16),
        ProfileIcons(
          phoneNumber: data.phoneNumber,
          email: data.email,
          location: "${data.country}, ${data.city}, ${data.address}.",
        ),
      ],
    );
  }

  Widget setupError(String error) {
    return Center(child: Text("Error: $error"));
  }
}
