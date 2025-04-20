import 'package:carrerk/core/theming/colors.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllJobs extends StatefulWidget {
  const AllJobs({super.key});

  @override
  State<AllJobs> createState() => _AllJobsState();
}

class _AllJobsState extends State<AllJobs> {
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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return Card(
            color: Colors.white,
            elevation: 0,
            margin: EdgeInsets.fromLTRB(0.w,0.h,0.w,16.h),
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
              title: Text(
                  job['title']!,
                  style: AppTextStyles.font16BlackPoppinsMedium),
              subtitle: Text(
                  job['location']!,
                  style: AppTextStyles.font10RangoonGreenPoppinsRegular,),
              trailing: TextButton(
                onPressed: (){
                  _deleteJob(index);
                },
                child: Text("Delete",
                    style: AppTextStyles.font12ArtyClickRedPoppinsRegular,
              ),
            ),
          )
          );
        },
      ),
    );
  }
}
