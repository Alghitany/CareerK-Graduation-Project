import 'package:carrerk/features/customer/jobs_post/customer_jobs_post.dart';
import 'package:flutter/material.dart';

import '../routes.dart';

class CustomerJobsPostFlow extends StatelessWidget {
  const CustomerJobsPostFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Navigator(
          initialRoute: Routes.customerJobPostScreen,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case Routes.customerJobPostScreen:
                return MaterialPageRoute(
                  builder: (_) => const CustomerJobPostScreen(),
                );

              default:
                return null;
            }
          },
        ),
      ],
    );
  }
}
