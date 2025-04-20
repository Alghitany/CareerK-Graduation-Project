import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/core/widgets/app_back_icon.dart';
import 'package:carrerk/core/widgets/app_text_button.dart';
import 'package:carrerk/features/company/send_to_applicants/message-applicant/widgets/accepted_and_rejected.dart';
import 'package:carrerk/features/company/send_to_applicants/message-applicant/widgets/message_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../successful/company_send_to_applicants_successful_screen.dart';

class CompanySendToClientsScreen extends StatelessWidget {
  const CompanySendToClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.w,16.h,16.w,0.h),
          child: Column(
            children: [
              const AppBackIcon(),
              verticalSpace(16),
              Text(
                'Send to Applicants',
                style: AppTextStyles.font24DunePoppinsMedium,
              ),
              verticalSpace(32),
              const AcceptedAndRejected(),
              verticalSpace(24),
              const MessageForm(),
              verticalSpace(48),
              AppTextButton(
                buttonText: 'Send to Applicant',
                  textStyle: AppTextStyles.font14WhitePoppinsMedium,
                  onPressed:(){
                    showDialog(
                      context: context,
                      builder: (context) {
                        return companySendToApplicantsSuccessfulScreen(context);
                      },
                    );
                  } )
            ],
          ),
        ),
      ),
    );
  }
}
