import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../../models/all_expense_item_header_model.dart';
import 'all_expense_item.dart';

class AllExpenseItemListView extends StatefulWidget {
  const AllExpenseItemListView({super.key});

  @override
  State<AllExpenseItemListView> createState() => _AllExpenseItemListViewState();
}

class _AllExpenseItemListViewState extends State<AllExpenseItemListView> {
  static List<AllExpenseItemHeaderModel> items = [
    AllExpenseItemHeaderModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      data: 'April 2022',
      price: r'$20,129',
    ),
    AllExpenseItemHeaderModel(
      image: Assets.imagesIncome,
      title: 'Income',
      data: 'April 2022',
      price: r'$20,129',
    ),
    AllExpenseItemHeaderModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      data: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: AllExpenseItem(
              isSelected: selectedIndex == 0,
              itemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: AllExpenseItem(
              isSelected: selectedIndex == 1,
              itemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: AllExpenseItem(
              isSelected: selectedIndex == 2,
              itemModel: items[2],
            ),
          ),
        ),
      ],
    );
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpenseItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
