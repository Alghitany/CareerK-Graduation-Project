import 'package:carrerk/features/customer/ui/home/logic/customer_home_cubit.dart';
import 'package:carrerk/features/customer/ui/home/logic/customer_home_state.dart';
import 'package:carrerk/features/customer/ui/home/ui/widgets/customer_jobs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter/gestures.dart';

import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_choice_chip.dart';
import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/routing/routes.dart';

import '../../data/model/customer_home_response_body.dart';

class CustomerBlocBuilder extends StatelessWidget {
  const CustomerBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomerHomeCubit, CustomerHomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (data) {
              return SafeArea(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomerJobs(jobs: data.services),
                    ],
                  ),
                ),
              );
            },
            error: (error) => Center(child: Text(error)),
          );
        },
      ),
    );
  }
}
