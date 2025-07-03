import 'package:carrerk/features/customer/ui/sign_up/ui/fill_profile/widgets/customer_signup_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/customer/ui/sign_up/logic/customer_sign_up_cubit.dart';
import '../../../features/customer/ui/sign_up/ui/compulsory_data/customer_sign_up_compulsory_data_screen.dart';
import '../../../features/customer/ui/sign_up/ui/fill_profile/customer_sign_up_fill_profile_screen.dart';
import '../../di/dependency_injection.dart';
import '../routes.dart';

class CustomerSignUpFlow extends StatelessWidget {
  const CustomerSignUpFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomerSignUpCubit>(
      create: (_) => getIt<CustomerSignUpCubit>(),
      child: Stack(
        children: [
          Navigator(
            initialRoute: Routes.customerSignUpCompulsoryDataScreen,
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case Routes.customerSignUpCompulsoryDataScreen:
                  return MaterialPageRoute(
                    builder: (_) => const CustomerSignUpCompulsoryDataScreen(),
                  );
                case Routes.customerSignUpFillProfileScreen:
                  return MaterialPageRoute(
                    builder: (_) => const CustomerSignUpFillProfileScreen(),
                  );

                default:
                  return null;
              }
            },
          ),
          const CustomerSignupBlocListener(),
        ],
      ),
    );
  }
}
