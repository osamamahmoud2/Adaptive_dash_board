import 'package:flutter/material.dart';

class TransactionHistoryModel {
  final String title, subTitle, amount;
  final Color amountColor;

  const TransactionHistoryModel(
      {required this.title,
      required this.subTitle,
      required this.amount,
      required this.amountColor});
}
