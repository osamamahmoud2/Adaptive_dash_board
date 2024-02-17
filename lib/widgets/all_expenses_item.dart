import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.allExpenesesItemModel, required this.isActive});
  final AllExpenesesItemModel allExpenesesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 700),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: isActive
          ? ActiveAllExpensesItem(
              allExpenesesItemModel: allExpenesesItemModel,
            )
          : InActiveAllExpensesItem(
              allExpenesesItemModel: allExpenesesItemModel),
      secondChild:
          InActiveAllExpensesItem(allExpenesesItemModel: allExpenesesItemModel),
    );
  }
}
