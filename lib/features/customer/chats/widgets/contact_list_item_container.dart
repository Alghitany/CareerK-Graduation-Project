import 'package:carrerk/core/helpers/spacing.dart';
import 'package:carrerk/core/theming/styles.dart';
import 'package:carrerk/features/customer/chats/models/contact_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactListItemContainer extends StatelessWidget {
  const ContactListItemContainer(
      {super.key, required this.contactListItemModel});
  final ContactListItemModel contactListItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: contactListItemModel.ontap,
      child: Container(
        margin: EdgeInsets.only(left: 24, top: 10, bottom: 10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24.r,
              backgroundImage: AssetImage(contactListItemModel.image),
            ),
            horizontalSpace(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(contactListItemModel.name,
                    style: AppTextStyles.font18DunePoppinsMedium),
                verticalSpace(10.h),
                Text(contactListItemModel.job,
                    style: AppTextStyles.font14LiverPoppinsMedium),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
