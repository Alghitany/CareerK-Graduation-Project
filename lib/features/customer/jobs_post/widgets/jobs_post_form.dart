// import 'package:carrerk/core/helpers/extensions.dart';
// import 'package:carrerk/core/theming/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../../../core/helpers/app_regex.dart';
// import '../../../../../../core/helpers/spacing.dart';
// import '../../../../../../core/theming/styles.dart';
// import '../../../../../../core/widgets/app_drop_down_menu.dart';
// import '../../../../../../core/widgets/app_label.dart';
// import '../../../../../../core/widgets/app_text_form_field.dart';

// class PostJobForm extends StatefulWidget {
//   const PostJobForm({super.key});

//   @override
//   State<PostJobForm> createState() => _PostJobFormState();
// }

// class _PostJobFormState extends State<PostJobForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Form(

//       child: Column(
//         children: [
//           const AppLabel(
//             text: 'task Title',
//           ),
//           verticalSpace(8),
//           AppTextFormField(

//               hintText: "Front end Developer",
//               validator: (jobTitle) {
//                 // if (!AppRegex.isValidName(jobTitle!)) {
//                 //   return 'Please enter a valid title';
//                 // }
//                 // return null;
//               }),
//           verticalSpace(16),
//           const AppLabel(
//             text: 'task Description',
//           ),
//           verticalSpace(8),
//           AppTextFormField(

//               hintText: "Enter a details company",
//               height: 92.h,
//               maxLines: 3,
//               validator: (jobDescription) {
//                 // if (!AppRegex.isValidMessage(jobDescription!)) {
//                 //   return 'Please enter a valid description';
//                 // }
//                 // return null;
//               }),
//               verticalSpace(16),
//               const AppLabel(text: 'Skills Required'),
//           verticalSpace(8),
//           ListView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: cubit.selectedSkillsControllers.length,
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: EdgeInsets.only(bottom: 8.0.h),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: AppTextFormField(

//                         hintText: "Add Skills",
//                         validator: (skills) {
//                           // if (!AppRegex.isValidName(skills!)) {
//                           //   return "Enter a valid skills";
//                           // }
//                           // return null;
//                         },
//                         suffixIcon: Row(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             cubit.selectedSkillsControllers.length > 1
//                                 ? Padding(
//                                     padding: EdgeInsets.only(right: 10.0.w),
//                                     child: InkWell(
//                                       onTap: () =>
//                                           cubit.removeSkillField(index),
//                                       child: const Icon(
//                                         Icons.remove,
//                                         color: ColorsManager.pastelGrey,
//                                       ),
//                                     ),
//                                   )
//                                 : const SizedBox
//                                     .shrink(), // Empty widget if no remove button
//                             Padding(
//                               padding: EdgeInsets.only(right: 10.0.w),
//                               child: InkWell(
//                                 onTap: () =>
//                                     setState(() => cubit.addSkillField()),
//                                 child: SizedBox(
//                                   height: 15.h,
//                                   width: 15.w,
//                                   child:
//                                       SvgPicture.asset('assets/svgs/add.svg'),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//           verticalSpace(16),
//           const AppLabel(
//             text: 'Job Type',
//           ),
//           verticalSpace(8),
//           AppDropDownMenu(

//             hintText: 'Full Time',
//             items: <String>['Part Time', 'Full Time']
//                 .map<DropdownMenuItem<String>>((String value) {
//               return DropdownMenuItem<String>(
//                 value: value,
//                 child:
//                     Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
//               );
//             }).toList(),
//             validator: (jobType) {
//               if (jobType.isNullOrEmpty()) {
//                 return 'Please enter a valid job type';
//               }
//               return null;
//             },
//           ),
//           verticalSpace(16),
//           const AppLabel(text: 'Job Location'),
//           verticalSpace(8),
//           AppTextFormField(

//               hintText: 'Cairo, Egypt',
//               validator: (location) {
//                 if (!AppRegex.isValidLocation(location!)) {
//                   return 'Please enter a valid location';
//                 }
//                 return null;
//               }),
//           verticalSpace(16),
//           const AppLabel(text: 'Price Range'),
//           verticalSpace(8),
//           AppTextFormField(

//               hintText: '1000 - 5000\$',
//               validator: (price) {
//                 if (!AppRegex.isValidPriceRange(price!)) {
//                   return "Please enter a valid Price";
//                 }
//                 return null;
//               }),
//         ],
//       ),
//     );
//   }
// }

import 'package:carrerk/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/helpers/spacing.dart';
import '../../../../../../core/theming/styles.dart';
import '../../../../../../core/widgets/app_drop_down_menu.dart';
import '../../../../../../core/widgets/app_label.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';

class CustomerPostJobForm extends StatefulWidget {
  const CustomerPostJobForm({super.key});

  @override
  State<CustomerPostJobForm> createState() => _CustomerPostJobFormState();
}

class _CustomerPostJobFormState extends State<CustomerPostJobForm> {
  final List<TextEditingController> _skillControllers = [];

  @override
  void initState() {
    super.initState();
    _skillControllers.add(TextEditingController());
  }

  @override
  void dispose() {
    for (final controller in _skillControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _addSkillField() {
    setState(() {
      _skillControllers.add(TextEditingController());
    });
  }

  void _removeSkillField(int index) {
    if (_skillControllers.length > 1) {
      setState(() {
        _skillControllers[index].dispose();
        _skillControllers.removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const AppLabel(text: 'task Title'),
          verticalSpace(8),
          AppTextFormField(
            hintText: "Front end Developer",
            validator: (jobTitle) {
              // return AppRegex.isValidName(jobTitle!) ? null : 'Invalid title';
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'task Description'),
          verticalSpace(8),
          AppTextFormField(
            hintText: "Enter a details company",
            height: 92.h,
            maxLines: 3,
            validator: (jobDescription) {
              // return AppRegex.isValidMessage(jobDescription!) ? null : 'Invalid description';
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Skills Required'),
          verticalSpace(8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _skillControllers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 8.0.h),
                child: Row(
                  children: [
                    Expanded(
                      child: AppTextFormField(
                        controller: _skillControllers[index],
                        hintText: "Add Skills",
                        validator: (skills) {
                          // return AppRegex.isValidName(skills!) ? null : "Invalid skill";
                        },
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (_skillControllers.length > 1)
                              Padding(
                                padding: EdgeInsets.only(right: 10.0.w),
                                child: InkWell(
                                  onTap: () => _removeSkillField(index),
                                  child: const Icon(
                                    Icons.remove,
                                    color: ColorsManager.pastelGrey,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: EdgeInsets.only(right: 10.0.w),
                              child: InkWell(
                                onTap: _addSkillField,
                                child: SizedBox(
                                  height: 15.h,
                                  width: 15.w,
                                  child:
                                      SvgPicture.asset('assets/svgs/add.svg'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Enter Experience Level'),
          verticalSpace(8),
          AppDropDownMenu(
            hintText: 'Midlevel',
            items: <String>['Junior', 'Midlevel', 'Senior']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child:
                    Text(value, style: AppTextStyles.font14BlackPoppinsRegular),
              );
            }).toList(),
            validator: (experienceLevel) {
              // if (experienceLevel.isNullOrEmpty()) {
              //   return 'Please enter a valid experience level';
              // }
              // return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'Price Range'),
          verticalSpace(8),
          AppTextFormField(
            hintText: '1000 - 5000\$',
            validator: (price) {
              // if (!AppRegex.isValidPriceRange(price!)) {
              //   return "Please enter a valid Price";
              // }
              // return null;
            },
          ),
          verticalSpace(16),
          const AppLabel(text: 'deadline task'),
          verticalSpace(8),
          AppTextFormField(
            hintText: '10 days',
            validator: (date) {
              // if (!AppRegex.isValidPriceRange(price!)) {
              //   return "Please enter a valid Price";
              // }
              // return null;
            },
          ),
        ],
      ),
    );
  }
}
