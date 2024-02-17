import 'package:adaptive_dash_board/widgets/all_expenses.dart';
import 'package:adaptive_dash_board/widgets/custom_drawer.dart';
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
        Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                children: [
                  AllExpenses(),
                  SizedBox(
                    height: 24,
                  ),
                  QuickInvoice()
                ],
              ),
            ))
      ],
    );
  }
}
