import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:adaptive_dash_board/widgets/last_transaction_users.dart';
import 'package:adaptive_dash_board/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        Text(
          'Latest Transaction',
          style: Appstyles.styleRegular16,
        ),
        LatestTransactionListView()
      ],
    ));
  }
}
