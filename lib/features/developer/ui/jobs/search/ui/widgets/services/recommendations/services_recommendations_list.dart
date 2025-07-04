import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/widgets/app_choice_chip.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../../../core/di/dependency_injection.dart';
import '../../../../../../../../../core/helpers/spacing.dart';
import '../../../../../../../../../core/routing/routes.dart';
import '../../../../../../../../../core/theming/styles.dart';
import '../../../../../../../../../core/widgets/job_bookmark/developer_job_bookmark_bloc_builder.dart';
import '../../../../../../../logic/developer_single_job_bookmark_logic/developer_single_job_bookmark_cubit.dart';
import '../../../../data/models/developer_recommendtions_models/developer_recommendations_response_body.dart';

class ServicesRecommendationsList extends StatefulWidget {
  final List<ServiceRecommendation> services;

  const ServicesRecommendationsList({super.key, required this.services});

  @override
  State<ServicesRecommendationsList> createState() =>
      _ServicesRecommendationsListState();
}

class _ServicesRecommendationsListState
    extends State<ServicesRecommendationsList> {
  final Map<String, bool> _expandedStates = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.w,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.services.length,
        itemBuilder: (context, index) {
          final service = widget.services[index];
          final isExpanded = _expandedStates[service.id] ?? false;

          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.developerJobsServiceDetailsScreen,
                arguments: AppArgument(serviceId: service.id),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
              color: Colors.white,
              elevation: 4,
              margin: EdgeInsets.only(bottom: 16.h),
              child: Padding(
                padding: EdgeInsets.fromLTRB(8.w, 8.h, 8.w, 8.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            service.title ?? 'No Title',
                            style:
                                AppTextStyles.font14RangoonGreenPoppinsSemiBold,
                          ),
                        ),
                        BlocProvider(
                          create: (_) =>
                              getIt<DeveloperSingleJobBookmarkCubit>()
                                ..bookmarkJob(service.id!),
                          child: DeveloperJobBookmarkBlocBuilder(
                              postId: service.id!),
                        ),
                      ],
                    ),
                    verticalSpace(4),
                    Text(
                      service.createdAt?.substring(0, 10) ?? '',
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
                            style:
                                AppTextStyles.font14RangoonGreenRalewayMedium,
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(12),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: isExpanded
                                ? (service.description ?? '')
                                : (service.description ?? '').length > 100
                                    ? '${service.description!.substring(0, 100)}... '
                                    : service.description ?? '',
                            style: AppTextStyles.font13LiverRalewayMedium,
                          ),
                          if (!isExpanded &&
                              (service.description?.length ?? 0) > 100)
                            TextSpan(
                              text: 'see more',
                              style: AppTextStyles.font13DuskyBlueRalewayMedium,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => setState(() {
                                      _expandedStates[service.id!] = true;
                                    }),
                            ),
                        ],
                      ),
                    ),
                    verticalSpace(12),
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
      ),
    );
  }
}
