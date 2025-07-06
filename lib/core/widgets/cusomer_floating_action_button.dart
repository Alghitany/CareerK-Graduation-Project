// import 'package:carrerk/core/helpers/extensions.dart';
// import 'package:carrerk/core/routing/routes.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../theming/colors.dart';

// class CustomerFloatingActionButton extends StatelessWidget {
//   const CustomerFloatingActionButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         context.pushNamed(Routes.companyJobsPostFlow);
//       },
//       child: Container(
//         width: 60.w,
//         height: 60.h,
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: ColorsManager.primaryWildBlueYonder,
//         ),
//         alignment: Alignment.center,
//         child: Icon(
//           Icons.add,
//           color: ColorsManager.pastelGrey,
//           size: 32.h,
//         ),
//       ),
//     );
//   }
// }
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomerFloatingActionButton extends StatelessWidget {
  const CustomerFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.customerJobPostScreen);
      },
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: ColorsManager.primaryWildBlueYonder,
        ),
        alignment: Alignment.center,
        child: Icon(
          Icons.add,
          color: ColorsManager.pastelGrey,
          size: 32.h,
        ),
      ),
    );
  }
}
