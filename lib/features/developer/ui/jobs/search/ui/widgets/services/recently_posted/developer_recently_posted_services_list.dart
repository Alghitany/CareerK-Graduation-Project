import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../../core/helpers/date_formatter.dart';
import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../../core/theming/colors.dart';
import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../../core/widgets/app_choice_chip.dart';
import '../../../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';
import '../../../../../../../logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import '../../../../data/models/developer_services_recently_posted_models/developer_services_recently_posted_response_body.dart';

class DeveloperRecentlyPostedServicesList extends StatefulWidget {
  final List<DeveloperServicesRecentlyPostedResponseBody> services;

  const DeveloperRecentlyPostedServicesList(
      {super.key, required this.services});

  @override
  State<DeveloperRecentlyPostedServicesList> createState() =>
      _DeveloperRecentlyPostedServicesListState();
}

class _DeveloperRecentlyPostedServicesListState
    extends State<DeveloperRecentlyPostedServicesList> {
  late List<DeveloperServicesRecentlyPostedResponseBody> services;

  @override
  void initState() {
    super.initState();
    services = widget.services;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];

        return GestureDetector(
          onTap: () => context.pushNamed(
            Routes.developerJobsServiceDetailsScreen,
            arguments: AppArgument(serviceId: service.id),
          ),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            color: Colors.white,
            elevation: 4,
            margin: EdgeInsets.only(bottom: 16.h),
            child: Padding(
              padding: EdgeInsets.all(12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          service.title ?? '',
                          style:
                              AppTextStyles.font14RangoonGreenPoppinsSemiBold,
                        ),
                      ),
                      BlocProvider(
                        create: (_) => getIt<DeveloperSingleJobBookmarkCubit>()
                          ..bookmarkJob(service.id!),
                        child: DeveloperJobBookmarkBlocBuilder(
                            postId: service.id!),
                      ),
                    ],
                  ),
                  verticalSpace(4),
                  Text(
                    formatTime(service.createdAt),
                    style: AppTextStyles.font10GranitePoppinsRegular,
                  ),
                  verticalSpace(12),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Budget: ',
                          style: AppTextStyles.font14LiverRalewayRegular,
                        ),
                        TextSpan(
                          text: service.budgetRange ?? 'N/A',
                          style: AppTextStyles.font14RangoonGreenRalewayMedium,
                        ),
                      ],
                    ),
                  ),
                  verticalSpace(12),
                  Text(
                    service.description ?? '',
                    style: AppTextStyles.font13LiverRalewayMedium,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(8),
                  if (service.requiredSkills != null &&
                      service.requiredSkills!.isNotEmpty)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          AppChoiceChip(
                            options: service.requiredSkills!,
                            selectedTextStyle:
                                AppTextStyles.font12GraniteRalewayRegular,
                            unSelectedTextStyle:
                                AppTextStyles.font12GraniteRalewayRegular,
                            selectedColor: ColorsManager.porcelain,
                            unSelectedColor: ColorsManager.porcelain,
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
