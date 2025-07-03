import 'package:carrerk/features/company/sign_up/logic/company_sign_up_cubit.dart';
import 'package:carrerk/features/company/sign_up/ui/compulsory_data/company_sign_up_compulsory_data_screen.dart';
import 'package:carrerk/features/company/sign_up/ui/contact_information/widgets/company_signup_bloc_listener.dart';
import 'package:carrerk/features/company/sign_up/ui/fill_profile/company_sign_up_fill_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/company/sign_up/ui/contact_information/company_sign_up_contact_information.dart';
import '../../../features/company/sign_up/ui/enter_location/company_sign_up_enter_location_screen.dart';
import '../../di/dependency_injection.dart';
import '../routes.dart';

class CompanySignUpFlow extends StatelessWidget {
  const CompanySignUpFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CompanySignupCubit>(
      create: (_) => getIt<CompanySignupCubit>(),
      child: Stack(
        children: [
          Navigator(
            initialRoute: Routes.companySignUpCompulsoryDataScreen,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case Routes.companySignUpCompulsoryDataScreen:
                  return MaterialPageRoute(
                    builder: (_) => const CompanySignUpCompulsoryDataScreen(),
                  );
                case Routes.companySignUpFillProfileScreen:
                  return MaterialPageRoute(
                    builder: (_) => const CompanySignUpFillProfileScreen(),
                  );
                case Routes.companySignUpEnterLocationScreen:
                  return MaterialPageRoute(
                    builder: (_) => const CompanySignUpEnterLocationScreen(),
                  );
                case Routes.companySignUpContactInformation:
                  return MaterialPageRoute(
                    builder: (_) =>
                        const CompanySignUpContactInformationScreen(),
                  );

                default:
                  return null;
              }
            },
          ),
          const CompanySignupBlocListener(),
        ],
      ),
    );
  }
}
