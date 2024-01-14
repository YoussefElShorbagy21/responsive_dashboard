import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/range_option.dart';

class AllExpenseHeader extends StatelessWidget {
  const AllExpenseHeader({super.key, required this.title});

  final String title ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOption(),
      ],
    );
  }
}