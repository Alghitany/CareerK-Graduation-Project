import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';

class AllJobsList extends StatefulWidget {
  const AllJobsList({super.key});

  @override
  State<AllJobsList> createState() => _AllJobsListState();
}

class _AllJobsListState extends State<AllJobsList> {
  final List<Map<String, String>> jobs = [
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
    {'title': "UX Designer", 'location': "Mansoura, Egypt"},
  ];

  void _deleteJob(int index) {
    setState(() {
      jobs.removeAt(index);
    });
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
        SizedBox(
          height: MediaQuery.of(context).size.height - 100,
          child: ListView.builder(
            itemCount: jobs.length,
            itemBuilder: (context, index) {
              final job = jobs[index];
              return Card(
                  color: Colors.white,
                  elevation: 0,
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 16.h),
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: ColorsManager.pastelGrey),
                      borderRadius: BorderRadius.circular(16.r)),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                        radius: 24.r,
                        backgroundImage:
                            const AssetImage('assets/images/company_logo.png'),
                      ),
                    ),
                    title: Text(job['title']!,
                        style: AppTextStyles.font16BlackPoppinsMedium),
                    subtitle: Text(
                      job['location']!,
                      style: AppTextStyles.font10RangoonGreenPoppinsRegular,
                    ),
                    trailing: TextButton(
                      onPressed: () {
                        _deleteJob(index);
                      },
                      child: Text(
                        "Delete",
                        style: AppTextStyles.font12ArtyClickRedPoppinsRegular,
                      ),
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
