import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/all_expenses_header.dart';
import 'package:adaptive_dash_board/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:adaptive_dash_board/widgets/all_expenses_row.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesRow()
        ],
      ),
    );
  }
}
