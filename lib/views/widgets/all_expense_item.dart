import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../../models/all_expense_item_header_model.dart';
import 'all_expense_item_header.dart';
import 'inactive_and_active_all_expense_item.dart';

class AllExpenseItem extends StatelessWidget {
  const AllExpenseItem({super.key,required this.itemModel,required this.isSelected});
    final AllExpenseItemHeaderModel  itemModel ;

  final bool isSelected ;
  @override
  Widget build(BuildContext context) {
    return  isSelected ? ActiveAllExpenseItem(
      itemModel: itemModel,
    ) :InActiveAllExpenseItem(
      itemModel: itemModel,
    )  ;
  }
}
