import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

import 'all_expensess.dart';

class AllExpenseAndQuickInvoice extends StatelessWidget {
  const AllExpenseAndQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
