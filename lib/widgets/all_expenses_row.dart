import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:adaptive_dash_board/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesRow extends StatefulWidget {
  const AllExpensesRow({super.key});

  @override
  State<AllExpensesRow> createState() => _AllExpensesRowState();
}

int selecteditem = 0;

final List<AllExpenesesItemModel> items = [
  const AllExpenesesItemModel(
      icon: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: '\$20,129'),
  const AllExpenesesItemModel(
      icon: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: '\$20,129'),
  const AllExpenesesItemModel(
      icon: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: '\$20,129'),
];

class _AllExpensesRowState extends State<AllExpensesRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var value = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selecteditem = index;
              });
            },
            child: Padding(
              padding: index == 1
                  ? const EdgeInsets.symmetric(horizontal: 12)
                  : EdgeInsets.zero,
              child: AllExpensesItem(
                  allExpenesesItemModel: items[index],
                  isActive: selecteditem == index),
            ),
          ),
        );
      }).toList(),
    );
  }
}
