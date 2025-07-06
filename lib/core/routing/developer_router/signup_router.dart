import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/developer/ui/sign_up/logic/developer_sign_up_cubit.dart';
import '../../../features/developer/ui/sign_up/ui/bio_and_skills/developer_sign_up_bio_and_skills_screen.dart';
import '../../../features/developer/ui/sign_up/ui/compulsory_data/developer_sign_up_compulsory_data_screen.dart';
import '../../../features/developer/ui/sign_up/ui/enter_location/developer_sign_up_enter_location_screen.dart';
import '../../../features/developer/ui/sign_up/ui/fill_profile/developer_sign_up_fill_profile_screen.dart';
import '../../../features/developer/ui/sign_up/ui/optional_data/developer_sign_up_optional_data_screen.dart';
import '../../../features/developer/ui/sign_up/ui/selected_courses/developer_sign_up_selected_courses.dart';
import '../../../features/developer/ui/sign_up/ui/selected_courses/widgets/sign_up_bloc_listener.dart';
import '../../di/dependency_injection.dart';
import '../routes.dart';

class DeveloperSignUpFlow extends StatelessWidget {
  const DeveloperSignUpFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DeveloperSignupCubit>(
      create: (_) => getIt<DeveloperSignupCubit>(),
      child: Stack(
        children: [
          Navigator(
            initialRoute: Routes.developerSignUpCompulsoryDataScreen,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case Routes.developerSignUpCompulsoryDataScreen:
                  return MaterialPageRoute(
                      builder: (_) =>
                          const DeveloperSignUpCompulsoryDataScreen());
                case Routes.developerSignUpFillProfileScreen:
                  return MaterialPageRoute(
                      builder: (_) => const DeveloperSignUpFillProfileScreen());
                case Routes.developerSignUpEnterLocationScreen:
                  return MaterialPageRoute(
                      builder: (_) =>
                          const DeveloperSignUpEnterLocationScreen());
                case Routes.developerSignUpBioAndSkillsScreen:
                  return MaterialPageRoute(
                      builder: (_) =>
                          const DeveloperSignUpBioAndSkillsScreen());
                case Routes.developerSignUpOptionalDataScreen:
                  return MaterialPageRoute(
                      builder: (_) =>
                          const DeveloperSignUpOptionalDataScreen());
                case Routes.developerSignUpSelectedCourses:
                  return MaterialPageRoute(
                      builder: (_) => const DeveloperSignUpSelectedCourses());
                default:
                  return null;
              }
            },
          ),

          // ✅ Global signup listener for this flow
          const SignupBlocListener(),
        ],
      ),
    );
  }
}
