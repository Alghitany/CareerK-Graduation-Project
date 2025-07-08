import 'package:carrerk/features/customer/ui/profile/data/model/view_profile_model/customer_profile_response_body.dart';

import 'package:carrerk/features/customer/ui/profile/logic/view_profile/customer_profile_cubit.dart';
import 'package:carrerk/features/customer/ui/profile/logic/view_profile/customer_profile_state.dart';
import 'package:carrerk/features/customer/ui/profile/ui/widgets/customer_profile_shummer.dart';

import 'package:carrerk/features/customer/ui/profile/ui/widgets/profile_image_name_and_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerProfileBlocBuilder extends StatelessWidget {
  const CustomerProfileBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileCubit, CustomerProfileState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => setupLoading(),
          success: (data) => setupSuccess(data),
          error: (error) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return const CustomerProfileShimmer();
  }

  Widget setupSuccess(CustomerProfileResponseBody data) {
    return ProfileImageNameAndLocation(
      imageUrl: data.profilePicture,
      name: data.name,
    );
  }

  Widget setupError() {
    return const Center(child: Text("Something went wrong"));
  }
}
