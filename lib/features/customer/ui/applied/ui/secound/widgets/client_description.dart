import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ClientDescription extends StatelessWidget {
  final String? description;

  const ClientDescription({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Clients Details:', style: AppTextStyles.font20BlackPoppinsMedium),
        verticalSpace(8),
        Text(description ?? 'there is no discription',
            style: AppTextStyles.font14DunePoppinsRegular),
      ],
    );
  }
}
