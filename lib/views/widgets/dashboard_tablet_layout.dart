import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/AllExpensesAndQuickInvoice.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

import 'income_section.dart';
import 'my_card_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AllExpenseAndQuickInvoice(),
                    SizedBox(
                      height: 24,
                    ),
                    MyCardAndTransactionHistorySection(),
                    SizedBox(
                      height: 24,
                    ),
                    IncomeSection(),
                  ],
                ),
              ),
            )),
        SizedBox(
          width: 24,
        ),
      ],
    );
  }
}
