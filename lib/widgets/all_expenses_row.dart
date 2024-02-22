import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_images.dart';
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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selecteditem = 0;
              });
            },
            child: AllExpensesItem(
                allExpenesesItemModel: items[0], isActive: selecteditem == 0),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selecteditem = 1;
              });
            },
            child: AllExpensesItem(
                allExpenesesItemModel: items[1], isActive: selecteditem == 1),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selecteditem = 2;
              });
            },
            child: AllExpensesItem(
                allExpenesesItemModel: items[2], isActive: selecteditem == 2),
          ),
        ),
      ],
    );
  }
}
