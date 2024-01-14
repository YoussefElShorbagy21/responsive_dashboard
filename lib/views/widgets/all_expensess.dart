import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'all-expense-header.dart';
import 'all_expense_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: 20,
        child: Column(
          children: [
            AllExpenseHeader(
              title: 'All Expenses',
            ),
            SizedBox(
              height: 16,
            ),
            AllExpenseItemListView(),
          ],
        ))
    ;
  }
}


