import 'package:carrerk/features/customer/profile/data/model/customer_profile_info/customer_profile_info_response_body.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_info_logic/customer_profile_info_cubit.dart';
import 'package:carrerk/features/customer/profile/logic/customer_profile_info_logic/customer_profile_info_state.dart';

import 'package:carrerk/features/customer/profile/ui/widgets/profile_info/profile_icons.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/profile_info/profile_icons_shimmer.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/profile_info/profile_image_name_and_location.dart';
import 'package:carrerk/features/customer/profile/ui/widgets/profile_info/profile_image_name_and_location_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../core/networking/api_error_model.dart';

class ProfileInfoBlocBuilder extends StatelessWidget {
  const ProfileInfoBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileInfoCubit, CustomerProfileInfoState>(
      buildWhen: (previous, current) =>
          current is CustomerProfileInfoLoading ||
          current is CustomerProfileInfoSuccess ||
          current is CustomerProfileInfoError,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (apiErrorModel) => setupError(apiErrorModel),
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

  Widget setupSuccess(CustomerProfileInfoResponseBody data) {
    return Column(
      children: [
        ProfileImageNameAndLocation(
          profileImage: data.profilePicture,
          customerName: data.name,
        ),
        verticalSpace(16),
        const ProfileIcons(),
      ],
    );
  }

  Widget setupError(ApiErrorModel apiErrorModel) {
    return Center(child: Text("Error: ${apiErrorModel.getAllErrorMessages()}"));
  }
}
