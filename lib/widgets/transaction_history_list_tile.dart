import 'package:adaptive_dash_board/models/transaction_history_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListTile extends StatelessWidget {
  const TransactionHistoryListTile(
      {super.key, required this.transactionHistoryModel});
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0XFFFAFAFA)),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: Appstyles.styleSemiBold16(context: context),
        ),
        subtitle: Text(
          transactionHistoryModel.subTitle,
          style: Appstyles.styleRegular16(context: context)
              .copyWith(height: 1.5, color: const Color(0XffAAAAAA)),
        ),
        trailing: Text(transactionHistoryModel.amount,
            style: Appstyles.styleSemiBold20(context: context)
                .copyWith(color: transactionHistoryModel.amountColor)),
      ),
    );
  }
}
