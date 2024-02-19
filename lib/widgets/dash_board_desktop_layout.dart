import 'package:adaptive_dash_board/widgets/all_expenses.dart';
import 'package:adaptive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:adaptive_dash_board/widgets/custom_drawer.dart';
import 'package:adaptive_dash_board/widgets/in_come.dart';
import 'package:adaptive_dash_board/widgets/my_card.dart';
import 'package:adaptive_dash_board/widgets/quickinvoice.dart';

import 'package:flutter/material.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyCard(),
                SizedBox(
                  height: 24,
                ),
                InCome()
              ],
            ),
          ),
        )
      ],
    );
  }
}
