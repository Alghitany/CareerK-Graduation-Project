import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/customer/ui/applied/data/model/secound_screen_model/application_details_response_body.dart';
import 'package:carrerk/features/customer/ui/applied/ui/secound/widgets/back_icon_details_and_contact.dart';
import 'package:carrerk/features/customer/ui/applied/ui/secound/widgets/client_description.dart';
import 'package:carrerk/features/customer/ui/applied/ui/secound/widgets/client_info_and_salary.dart';
import 'package:carrerk/features/customer/ui/applied/ui/secound/widgets/client_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationDetailsContent extends StatelessWidget {
  final ApplicationDetailsResponseBody data;

  const ApplicationDetailsContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final application = data.application;
    final developer = application.developer;

    return Padding(
      padding: EdgeInsets.only(top: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BackIconDetailsAndContact(),
          verticalSpace(32),
          ClientInfoAndSalary(
            name: '${developer.firstName} ${developer.lastName}',
            title: developer.trackTitle,
            salaryRange: '${application.expectedSalary} \$',
            imageUrl: developer.profilePicture,
          ),
          ClientLocation(
            location:
                '${developer.location?.city ?? ''}, ${developer.location?.country ?? ''}',
          ),
          verticalSpace(32),
          ClientDescription(
            description: developer.briefBio,
          ),
          verticalSpace(32),
          AppTextButton(
            onPressed: () {},
            buttonText: 'Hire',
            textStyle: AppTextStyles.font14WhitePoppinsMedium,
          ),
        ],
      ),
    );
  }
}
