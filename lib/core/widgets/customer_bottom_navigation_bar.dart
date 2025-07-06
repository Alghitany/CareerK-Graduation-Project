// import 'package:carrerk/core/helpers/extensions.dart';
// import 'package:carrerk/core/theming/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../routing/routes.dart';

// class CustomerBottomNavigationBar extends StatefulWidget {
//   final int? selectedIndex;

//   const CustomerBottomNavigationBar({super.key, this.selectedIndex});

//   @override
//   State<CustomerBottomNavigationBar> createState() =>
//       _CustomerBottomNavigationBarState();
// }

// class _CustomerBottomNavigationBarState
//     extends State<CustomerBottomNavigationBar> {
//   late int _selectedIndex;

//   final Color _selectedColor = const Color(0xFF465697);
//   final Color _unselectedColor = const Color(0xFF808080);

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _selectedIndex = widget.selectedIndex ?? 0;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: IconButton(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     "assets/svgs/home.svg",
//                     colorFilter: ColorFilter.mode(
//                       _selectedIndex == 0 ? _selectedColor : _unselectedColor,
//                       BlendMode.srcIn,
//                     ),
//                     fit: BoxFit.contain,
//                   ),
//                   Text("Home",
//                       style: _selectedIndex == 0
//                           ? AppTextStyles.font12DuskyBluePoppinsMedium
//                           : AppTextStyles.font12GranitePoppinsMedium),
//                 ],
//               ),
//               onPressed: () {
//                 _onItemTapped(0); //     fsdsasdad
//                 context.pushNamed(Routes.companyHomeMainPageScreen);
//               },
//             ),
//           ),
//           Expanded(
//             child: IconButton(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     height: 21.h,
//                     width: 21.w,
//                     "assets/svgs/person_outlined.svg",
//                     colorFilter: ColorFilter.mode(
//                       _selectedIndex == 1 ? _selectedColor : _unselectedColor,
//                       BlendMode.srcIn,
//                     ),
//                     fit: BoxFit.contain,
//                   ),
//                   Text("Applied",
//                       style: _selectedIndex == 1
//                           ? AppTextStyles.font12DuskyBluePoppinsMedium
//                           : AppTextStyles.font12GranitePoppinsMedium),
//                 ],
//               ),
//               onPressed: () {
//                 _onItemTapped(1); // fjgkjlugjl
//                 context.pushNamed(Routes.searchScreen);
//               },
//             ),
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: IconButton(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     height: 21.h,
//                     width: 21.w,
//                     "assets/images/chat-bubble-left.png",
//                     colorFilter: ColorFilter.mode(
//                       _selectedIndex == 2 ? _selectedColor : _unselectedColor,
//                       BlendMode.srcIn,
//                     ),
//                     fit: BoxFit.contain,
//                   ),
//                   Text("Chat",
//                       style: _selectedIndex == 2
//                           ? AppTextStyles.font12DuskyBluePoppinsMedium
//                           : AppTextStyles.font12GranitePoppinsMedium),
//                 ],
//               ),
//               onPressed: () {
//                 _onItemTapped(2);
//                 context.pushNamed(Routes.companyJobsScreen);
//               },
//             ),
//           ),
//           Expanded(
//             child: IconButton(
//               icon: Column(
//                 children: [
//                   SvgPicture.asset(
//                     "assets/svgs/person_outlined.svg",
//                     colorFilter: ColorFilter.mode(
//                       _selectedIndex == 3 ? _selectedColor : _unselectedColor,
//                       BlendMode.srcIn,
//                     ),
//                     fit: BoxFit.contain,
//                   ),
//                   Text("Profile",
//                       style: _selectedIndex == 3
//                           ? AppTextStyles.font12DuskyBluePoppinsMedium
//                           : AppTextStyles.font12GranitePoppinsMedium),
//                 ],
//               ),
//               onPressed: () {
//                 _onItemTapped(3);
//                 context.pushNamed(Routes.companyProfileScreen);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:carrerk/core/helpers/extensions.dart';
import 'package:carrerk/core/routing/app_argument.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../routing/routes.dart';

class CustomerBottomNavigationBar extends StatefulWidget {
  final int? selectedIndex;

  const CustomerBottomNavigationBar({super.key, this.selectedIndex});

  @override
  State<CustomerBottomNavigationBar> createState() =>
      _CustomerBottomNavigationBarState();
}

class _CustomerBottomNavigationBarState
    extends State<CustomerBottomNavigationBar> {
  late int _selectedIndex;

  final Color _selectedColor = const Color(0xFF465697);
  final Color _unselectedColor = const Color(0xFF808080);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/home.svg",
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 0 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Home",
                      style: _selectedIndex == 0
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(0);
                context.pushNamed(Routes.customerHomeMainPageScreen);
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    height: 21.h,
                    width: 21.w,
                    "assets/svgs/person_outlined.svg",
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 1 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Applied",
                      style: _selectedIndex == 1
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(1);
                context.pushNamed(Routes.customerAppliedFirstScreen,
                    arguments: AppArgument(
                        serviceId: 'edba0012-c0fe-4db3-ae26-96ccde918dee'));
              },
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    height: 21.h,
                    width: 21.w,
                    "assets/svgs/chats.svg",
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 2 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Chats",
                      style: _selectedIndex == 2
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(2);
                ;
              },
            ),
          ),
          Expanded(
            child: IconButton(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/svgs/person_outlined.svg",
                    height: 21.h,
                    width: 21.w,
                    colorFilter: ColorFilter.mode(
                      _selectedIndex == 3 ? _selectedColor : _unselectedColor,
                      BlendMode.srcIn,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Text("Profile",
                      style: _selectedIndex == 3
                          ? AppTextStyles.font12DuskyBluePoppinsMedium
                          : AppTextStyles.font12GranitePoppinsMedium),
                ],
              ),
              onPressed: () {
                _onItemTapped(3);
                context.pushNamed(Routes.customerProfileScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
