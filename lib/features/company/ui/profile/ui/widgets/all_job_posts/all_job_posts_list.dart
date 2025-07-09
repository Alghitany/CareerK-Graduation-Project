import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/theming/colors.dart';
import '../../../../../logic/company_jobs_delete_post_cubit.dart';
import '../../../data/models/company_profile_all_jobs_posts_models/company_profile_all_job_posts_response_body.dart';

class AllJobPostsList extends StatefulWidget {
  final List<JobPostItem> jobPosts;

  const AllJobPostsList({super.key, required this.jobPosts});

  @override
  State<AllJobPostsList> createState() => _AllJobPostsListState();
}

class _AllJobPostsListState extends State<AllJobPostsList> {
  late final List<JobPostItem> _jobPosts;
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    super.initState();
    _jobPosts = List<JobPostItem>.from(widget.jobPosts);
  }

  void _deleteJob(int index) {
    final removedJob = _jobPosts[index];
    _jobPosts.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => _buildJobItem(removedJob, index, animation),
      duration: const Duration(milliseconds: 300),
    );
  }

  Widget _buildJobItem(
      JobPostItem job, int index, Animation<double> animation) {
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
            context.pushNamed(
              Routes.developerJobsJobDetailsScreen,
              arguments: AppArgument(jobId: job.id, isCompany: true),
            );
          },
          title: Text(
            job.title,
            style: AppTextStyles.font16BlackPoppinsMedium,
          ),
          subtitle: Text(
            job.location,
            style: AppTextStyles.font10RangoonGreenPoppinsRegular,
          ),
          trailing: TextButton(
            onPressed: () {
              final cubit = context.read<CompanyJobsDeletePostCubit>();
              cubit.deleteJobPost(job.id, onSuccess: () {
                _deleteJob(index);
              });
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
          initialItemCount: _jobPosts.length,
          itemBuilder: (context, index, animation) {
            return _buildJobItem(_jobPosts[index], index, animation);
          },
        ),
      ],
    );
  }
}
