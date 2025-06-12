import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/company/jobs_post/logic/company_jobs_post_cubit.dart';
import '../../../features/company/jobs_post/ui/first/company_job_post_first_screen.dart';
import '../../../features/company/jobs_post/ui/second/company_job_post_second_screen.dart';
import '../../../features/company/jobs_post/ui/second/widgets/jobs_post_bloc_listener.dart';
import '../../di/dependency_injection.dart';
import '../routes.dart';

class CompanyJobsPostFlow extends StatelessWidget {
  const CompanyJobsPostFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CompanyJobsPostCubit>(
      create: (_) => getIt<CompanyJobsPostCubit>(),
      child: Stack(
        children: [
          Navigator(
            initialRoute: Routes.companyJobPostFirstScreen,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case Routes.companyJobPostFirstScreen:
                  return MaterialPageRoute(
                    builder: (_) => const CompanyJobPostFirstScreen(),
                  );
                case Routes.companyJobPostSecondScreen:
                  return MaterialPageRoute(
                    builder: (_) => const CompanyJobPostSecondScreen(),
                  );
                default:
                  return null;
              }
            },
          ),
          const JobsPostBlocListener(),
        ],
      ),
    );
  }
}
