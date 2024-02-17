import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/date_options.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: Appstyles.styleSemiBold20,
        ),
        DateOptions()
      ],
    );
  }
}
