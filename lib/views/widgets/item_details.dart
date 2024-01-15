import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../../models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});
  final ItemDetailsModel itemDetailsModel ;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration:  ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(itemDetailsModel.title,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFF064060),
            fontSize: getResponsiveFontSize(context,fontSize: 10)
          )),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
