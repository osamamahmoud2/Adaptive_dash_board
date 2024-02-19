import 'package:adaptive_dash_board/widgets/custom_header.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:adaptive_dash_board/widgets/in_come_cart.dart';
import 'package:adaptive_dash_board/widgets/income_details_list.dart';
import 'package:flutter/material.dart';

class InCome extends StatelessWidget {
  const InCome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: CustomBackroundContainer(
          child: Column(
        children: [
          CustomHeader(headerTitle: "Income"),
          SizedBox(
            height: 16,
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(child: InComeChart()),
                SizedBox(
                  width: 20,
                ),
                Expanded(child: InComeDetailsList())
              ],
            ),
          )
        ],
      )),
    );
  }
}
