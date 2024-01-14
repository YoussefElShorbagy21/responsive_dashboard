import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all-expense-header.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';

import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: 20,
        child: Column(
          children: [
            AllExpenseHeader(
              title: 'Income',
            ),
            SizedBox(
              height: 16,
            ),
            IncomeSectionBody(),
          ],
        ));
  }
}


