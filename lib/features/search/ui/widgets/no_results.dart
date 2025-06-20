import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class NoResults extends StatelessWidget {
  const NoResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/empty_search.png'),
        Text(
          'No Results',
          style: AppTextStyles.font24BlackPoppinsSemiBold,
        ),
        Text(
          'We searched far and wide and couldn\'t \nfind anything matching your search.',
          textAlign: TextAlign.center,
          style: AppTextStyles.font14GranitePoppinsRegular,
        )
      ],
    );
  }
}
