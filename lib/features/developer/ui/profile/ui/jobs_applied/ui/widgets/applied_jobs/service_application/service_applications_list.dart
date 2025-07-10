import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../../core/routing/app_argument.dart';
import '../../../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../../../core/theming/styles.dart';
import '../../../../data/models/developer_profile_applied_jobs_models/developer_profile_applied_jobs_response_body.dart';
import '../../../../logic/developer_service_delete_logic/developer_service_delete_cubit.dart';

class ServiceApplicationsList extends StatelessWidget {
  final List<ServiceApplication> serviceApplications;

  const ServiceApplicationsList({super.key, required this.serviceApplications});

  @override
  Widget build(BuildContext context) {
    if (serviceApplications.isEmpty) {
      return const Center(child: Text('No service applications found.'));
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(vertical: 12.h),
      itemCount: serviceApplications.length,
      itemBuilder: (context, index) {
        final service = serviceApplications[index];
        final status = (service.status ?? '').toLowerCase();

        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.developerJobsServiceDetailsScreen,
              arguments: AppArgument(serviceId: service.servicePost?.id),
            );
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 16.h),
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha((0.1 * 255).toInt()),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  service.servicePost?.title ?? 'No title',
                  style: AppTextStyles.font14BlackPoppinsSemiBold,
                ),
                verticalSpace(4),
                // Name
                Text(
                  service.servicePost?.customer?.name ?? 'No name',
                  style: AppTextStyles.font12BlackPoppinsLight,
                ),
                verticalSpace(8),
                // Salary + Status + Withdraw
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/coin.svg",
                      width: 18.w,
                      height: 18.h,
                    ),
                    horizontalSpace(6),
                    Expanded(
                      child: Text(
                        service.servicePost?.budgetRange ?? '',
                        style: AppTextStyles.font14DuskyBluePoppinsSemiBold,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    horizontalSpace(8),
                    _buildStatusBadge(status),
                    horizontalSpace(8),
                    if (status == 'pending' || status == 'accepted')
                      TextButton(
                        onPressed: () {
                          context
                              .read<DeveloperServiceDeleteCubit>()
                              .deleteServiceApplication(service.applicationId!);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: ColorsManager.primaryWildBlueYonder,
                          minimumSize: Size(80.w, 32.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 4.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        child: Text(
                          'Withdraw',
                          style: AppTextStyles.font12WhitePoppinsMedium,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildStatusBadge(String status) {
    if (status == 'accepted') {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Accepted", style: AppTextStyles.font12CloverGreenPoppinsMedium),
          horizontalSpace(4),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.cloverGreen,
            ),
            padding: const EdgeInsets.all(3),
            child: const Icon(Icons.check, color: Colors.white, size: 14),
          ),
        ],
      );
    } else if (status == 'rejected') {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Rejected",
              style: AppTextStyles.font12ArtyClickRedPoppinsMedium),
          horizontalSpace(4),
          SvgPicture.asset(
            'assets/svgs/rejected_status.svg',
            width: 18.w,
            height: 18.h,
          ),
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${_capitalize(status)}...',
            style: AppTextStyles.font12SchoolBusYellowPoppinsMedium,
          ),
          horizontalSpace(4),
          const Icon(Icons.hourglass_bottom_outlined,
              color: ColorsManager.schoolBusYellow, size: 16),
        ],
      );
    }
  }

  String _capitalize(String s) =>
      s.isNotEmpty ? s[0].toUpperCase() + s.substring(1).toLowerCase() : s;
}
