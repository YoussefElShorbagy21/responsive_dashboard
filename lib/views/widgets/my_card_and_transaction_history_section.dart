import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/my_card_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history.dart';


class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        padding: 24,
        child: Column(
          children: [
            MyCardSection(),
            Divider(
              color: Color(0xFFF1F1F1),
              height: 40,
            ),
            TransactionHistory(),
          ],
        ),
    );
  }
}
