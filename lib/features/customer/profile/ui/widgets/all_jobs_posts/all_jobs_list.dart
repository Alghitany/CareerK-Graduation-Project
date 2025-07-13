import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/features/customer/profile/data/model/customer_profile_all_service_posts/customer_profile_all_service_posts_response_body.dart';
import 'package:carrerk/features/customer/profile/logic/customer_jobs_delete_post_logic/customer_jobs_delete_post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/colors.dart';

class AllJobsList extends StatefulWidget {
  final List<ServicePostItem> jobs;

  const AllJobsList({super.key, required this.jobs});

  @override
  State<AllJobsList> createState() => _AllJobsListState();
}

class _AllJobsListState extends State<AllJobsList> {
  late final List<ServicePostItem> _jobs;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    _jobs = List<ServicePostItem>.from(widget.jobs);
  }

  void _deleteJob(int index) {
    final removedJob = _jobs[index];
    _jobs.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => _buildJobItem(removedJob, index, animation),
      duration: const Duration(milliseconds: 300),
    );
  }

  Widget _buildJobItem(
      ServicePostItem job, int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        color: Colors.white,
        elevation: 0,
        margin: EdgeInsets.only(bottom: 16.h),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: ColorsManager.pastelGrey),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(
              Routes.developerJobsJobDetailsScreen,
              arguments: AppArgument(
                jobId: job.id,
              ),
            );
          },
          title: Text(
            job.title,
            style: AppTextStyles.font16BlackPoppinsMedium,
          ),
          subtitle: Row(
            children: [
              Text(
                'budget : ',
                style: AppTextStyles.font12WaikawaGreyPoppinsRegular,
              ),
              Text(
                " ${job.budgetRange}",
                style: AppTextStyles.font14LiverPoppinsMedium,
              ),
            ],
          ),
          trailing: TextButton(
            onPressed: () async {
              final cubit = context.read<CustomerJobsDeletePostCubit>();
              await cubit.deleteJobPost(job.id);
              _deleteJob(index);
            },
            child: Text(
              "Delete",
              style: AppTextStyles.font12ArtyClickRedPoppinsRegular,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            'All Jobs',
            style: AppTextStyles.font14RangoonGreenPoppinsSemiBold,
          ),
        ),
        verticalSpace(12),
        AnimatedList(
          key: _listKey,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          initialItemCount: _jobs.length,
          itemBuilder: (context, index, animation) {
            return _buildJobItem(_jobs[index], index, animation);
          },
        ),
      ],
    );
  }
}
